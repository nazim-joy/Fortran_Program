        PROGRAM GAUSS_SEIDAL_ITER
                IMPLICIT NONE
                INTEGER N,M,I,J
                PARAMETER(N=3)
                REAL A(N,N+1),X(N),X0(N),T,W
                WRITE(*,*)'ENTER THE COEFFI MATRIX WITH RIGHT SIDE:'
                READ(*,*)((A(I,J),J=1,N+1),I=1,N)
                WRITE(*,*)'ENTER INITIAL SOLUTION;'
                READ(*,*)(X0(I),I=1,N)
                WRITE(*,*)'ENTER MAX NO. ITER M,TOLEREANCE T:'
                READ(*,*)M,T
                WRITE(*,*)'GAUSS-SEIDAL ITERATIVE METHOD'
                CALL GAU(A,X,X0,N,M,T)
        STOP
        END PROGRAM
        
        SUBROUTINE GAU(A,X,X0,N,M,T)
        REAL A(N,N+1),X(N),X0(N)
        K=1
  10    DO I=1,N
           S1=0
           S2=0
           DO J=1,I-1
              S1=S1+A(I,J)*X(J)
           ENDDO
           DO J=I+1,N
              S2=S2+A(I,J)*X0(J)
           ENDDO
           X(I)=(-S1-S2+A(I,N+1))/A(I,I)
        ENDDO
        CALL D(X,X0,N,G)
        IF(G.LT.T)THEN
           PRINT*,X
           GOTO 20
        ELSEIF(K.LT.M)THEN
           K=K+1
           PRINT*,X,K
           DO I=1,N
              X0(I)=X(I)
           ENDDO
           GOTO 10
        ELSE
           PRINT*,'FAILED'
        ENDIF
  20    RETURN
        END
        
        SUBROUTINE D(X,X0,N,G)
        REAL X(N),X0(N)
        G=-1
        DO I=1,N
           IF(ABS(X(I)-X0(I)).GT.G)G=ABS(X(I)-X0(I))
        ENDDO
        RETURN
        END
