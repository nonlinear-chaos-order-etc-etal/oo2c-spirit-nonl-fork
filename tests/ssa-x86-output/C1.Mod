MODULE C1;

PROCEDURE Sub(a, b: LONGINT): LONGINT;
  BEGIN
    RETURN a-b;
  END Sub;

PROCEDURE f*(a, b: LONGINT): LONGINT;
  BEGIN
    RETURN Sub(a, b);
  END f;

END C1.
