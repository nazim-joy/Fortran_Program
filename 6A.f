        PROGRAM BISECTION
                IMPLICIT NONE
                REAL,PARAMETER::TOL=1E-4
                REAL::A,B,C,F
  10            READ(*,*)A,B
  20            IF(F(A)*F(B).LT.0)THEN
                    C=(A+B)/2.0
                ELSE
                    WRITE(6,*)"CHANGE FOR ANOTHER A&B"
                    GOTO 10
                ENDIF
                IF(F(A)*F(B).LT.0)THEN
                    B=C
                ELSE
                    A=C
                ENDIF
                IF(ABS(B-A).GT.TOL)GOTO 20
                    WRITE(6,*)"THE ROOT IS=",C
        STOP
        END PROGRAM
        
        REAL FUNCTION F(X)
        IMPLICIT NONE
        REAL::X
        F=X*EXP(X)
        RETURN
        END
