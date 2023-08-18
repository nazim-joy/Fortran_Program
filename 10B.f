        PROGRAM EULER
                IMPLICIT NONE
                REAL,EXTERNAL::F
                REAL::X0,Y0,H,X
                INTEGER::N,I
                PRINT*,"ENTER THE VALUE OF X0,Y0,H,X:"
                READ(*,*)X0,Y0,H,X
                N=((X-X0)/H+0.1)
                DO I=1,N
                   X0=X0+H
                   Y0=Y0+H*F(X0,Y0)
                   PRINT*,"THE VALUES OF X0 AND Y0 IS:",X0,Y0
                ENDDO
        END PROGRAM
        REAL FUNCTION F(X,Y)
             REAL::X,Y
             F=X**2+Y**2
        END FUNCTION
