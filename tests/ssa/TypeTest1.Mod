MODULE TypeTest1;

IMPORT Out := Out0;

TYPE
  R0 = RECORD      END;   P0 = POINTER TO R0;
  R1 = RECORD (R0) END;   P1 = POINTER TO R1;
  R2 = RECORD (R1) END;   P2 = POINTER TO R2;

PROCEDURE Write (p: P0);
  BEGIN
    IF (p IS P2) THEN
      Out.String ("P2");
    ELSIF (p IS P1) THEN
      Out.String ("P1");
    ELSE
      Out.String ("P0");
    END;
    Out.Ln;
  END Write;

PROCEDURE Test* ();
  VAR
    p0: P0; p1: P1; p2: P2;
  BEGIN
    NEW (p0); Write (p0);
    NEW (p1); Write (p1);
    NEW (p2); Write (p2);
  END Test;

END TypeTest1.
