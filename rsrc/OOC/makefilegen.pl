#!/usr/bin/perl -w
# -*-mode: cperl-*-

use strict;
use File::Find;

my $output = "Makefile.ext";
my $main = "obj/oo2c_";
my $exec = "oo2c";

my %header = ();
my %repository = ();
sub get_header() {
  if(/\.h$/){
    my $header = "$File::Find::dir/$_";
    my ($rep, $file) = ($header =~ m:^(.*/)obj/(.*)\.h$:);
    my $module = $file;
    $module =~ s#/#:#g;
    $header{$module} = { repository => $rep,
			 module => $module,
			 source => "${rep}src/$file.Mod",
			 header => $header,
			 objfile => "${rep}obj/$file.o",
		       };
    push @{$repository{$rep}}, $header{$module};
  }
}

sub get_c_source {
  my ($source) = @_;
  
  open F, "<$source" or die "open($source) failed: $!";
  my $prefix = $source;
  $prefix =~ s:/[^/]+$::;
  my $cfile;
  while (<F>) {
    if (/\WFILE\s*"([^"]+)"/) {
      $cfile = "$prefix/$1";
    }
  }
  close F;
  return $cfile;
}

find(\&get_header, ".");
for my $m (keys %header) {
  my $file = $header{$m}{header};
  $file =~ s:\.h$:\.c:;
  if (not -f $file) {
    $file = get_c_source($header{$m}{source});
  }
  $header{$m}{cfile} = $file;
}

my @modules = sort keys %header;
print "OBJ=", join(" ", map {$header{$_}{objfile}} @modules), " $main.o\n\n";

print "all: $exec\n\n";

my $flags = "-Ilib/src ".join(" ", map { "-I${_}obj" } keys %repository);
for my $m (@modules) {
  print "$header{$m}{objfile}:\n";
  print "\t\$(CC) \$(CFLAGS) \$(CPPFLAGS) $flags -c $header{$m}{cfile} -o $header{$m}{objfile}\n\n";
}

print "$main.o:\n";
print "\t\$(CC) \$(CFLAGS) $flags -c $main.c -o $main.o\n\n";

print "$exec: \$(OBJ)\n";
print "\t\$(CC) \$(LDFLAGS) -o $exec \$(OBJ) -lm \$(LIBS)\n\n";