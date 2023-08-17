        PROGRAM PRODUCT
                PARAMETER(N=3)
                INTEGER A,B,C
                DIMENSION A(N,N),B(N,N),C(N,N)
                PRINT*,"ENTER THE MATRIX A,COLUMNWISE"
                READ(*,*)((A(I,J),J=1,N),I=1,N)
                PRINT*,"ENTER THE MATRIX B, COLUMNWISE"
                READ(*,*)((B(I,J),J=1,N),I=1,N)
                WRITE(6,*)"MATRIX A="
                WRITE(6,10)((A(I,J),J=1,N),I=1,N)
                WRITE(6,*)"MATRIX B="
                WRITE(6,10)((B(I,J),J=1,N),I=1,N)
 10             FORMAT(1X,3(I4,2X))
                CALL PROD(N,A,B,C)
                WRITE(6,*)"MATRIX C=AB"
                WRITE(6,10)((C(I,J),J=1,N),I=1,N)
        END PROGRAM
        
        SUBROUTINE PROD(N,A,B,C)
        DIMENSION A(N,N),B(N,N),C(N,N)
        INTEGER A,B,C
        DO I=1,N
           DO J=1,N
              C(I,J)=0
              DO K=1,N
                 C(I,J)=C(I,J)+A(I,K)*B(K,J)
              ENDDO
           ENDDO
        ENDDO
        RETURN
        STOP
        END
