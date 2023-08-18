        PROGRAM ITER
                TOL=1E-4
                X0=1.0
  10            X1=SQRT(2.0-ALOG(X0))
                IF(ABS(X1-X0).LE.TOL)GOTO20
                X0=X1
                GOTO 10
  20            WRITE(*,30)X1
  30            FORMAT(1X,"ONE OF THE ROOT IS X="F10.6)
        STOP
        END PROGRAM
