        DIMENSION M(60)
        PRINT*,'ENTER DECIMAL NUMBER'
        READ(5,*)N
        K=1
   10   M(K)=MOD(N,8)
        N=N/8
        K=K+1
        IF(N.GT.0)GOTO 10
        WRITE(6,*)
        PRINT*,'OCTAL NUMBER'
        PRINT 20, (M(I),I=1,K)
   20   FORMAT(3X,60I1)
        STOP
        END
