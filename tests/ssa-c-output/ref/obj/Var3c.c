#include "./Var3c.d"
#include "__oo2c.h"

static OOC_INT16 Var3c__F(OOC_CHAR8 b) {
  register OOC_INT32 i0;

  i0 = b;
  if (i0) goto l3;
  i0=0;
  goto l4;
l3:
  i0=1;
l4:
  i0 = i0+0;
  return i0;
}

void Var3c__Test() {
  register OOC_INT32 i0;

  i0 = Var3c__F(OOC_FALSE);
  Out0__Int(i0, 0);
  Out0__Ln();
  i0 = Var3c__F(OOC_TRUE);
  Out0__Int(i0, 0);
  Out0__Ln();
  return;
}

void Var3c_init(void) {

  return;
}

/* --- */
