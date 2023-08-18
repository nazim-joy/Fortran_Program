        PROGRAM GAUSS_JACOBI
                TOL=1E-4
                PRINT*,"ENTER THE INITIAL VALUE OF X:"
                READ*,X
                PRINT*,"ENTER TEH INITIAL VALUE OF Y:"
                READ*,Y
                PRINT*,"ENTER THE INITIAL VALUE OF Z:"
                READ*,Z
                PRINT*,"ENTER THE NUMBER OF ITERATION"
                READ*,N
                DO 10 K=1,N
                   X=(3.0+5.0*Y+2.0*Z)/10.0
                   Y=(3.0+4.0*X+3.0*Z)/10.0
                   Z=(-3.0-X-6.0*Y)/10.0
                   IF(ABS(10.0*X-5.0*Y-2.0*Z-3.0).LT.TOL)GOTO 20
  10            CONTINUE
  20            PRINT*,"   1   X   Y   Z"
                PRINT*,K,X,Y,Z
        STOP
        END PROGRAM
