        PROGRAM FIBONACCI
                PARAMETER(N=36)
                DIMENSION M(N)
                M(1)=1
                M(2)=1
                DO K=3,N
                   M(K)=M(K-2)+M(K-1)
                END DO
                WRITE(6,40)M
  40            FORMAT(3X,4I7)
        STOP
        END PROGRAM
