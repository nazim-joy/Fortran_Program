        PROGRAM SIMPSONS
                REAL*8 A,B,APPROX
                INTEGER*4 I,NX
                REAL*8 SIMPSON38
                A=0.0
                B=PI/2.0
                WRITE(6,*) ' N SIMPSONS 3/8 RULE'
                NX=3
                DO I=1,12
                   APPROX=SIMPSONS38(A,B,NX)
                   WRITE(6,*)NX,APPROX
                   NX=3*NX
                ENDDO
        STOP
        END
        
        FUNCTIONF(X)
        REAL*8 X,F
        F=EXP*SINX
        RETURN
        END
        
        REAL*8 FUNCTION SIMPSONS38(A,B,NX)
        INTEGER*4 I,NX
        REAL*8 A,B,F,H,XA,FA
        H=(B-A)/DFLOAT(NX)
        SUM=(F(A)+F(B))
        DO I=1,NX-1
           XA=A+DFLOAT(I)*H
           FA=F(XA)
           IF(MOD(I,3).EQ.0)THEN
                SUM=SUM+2.0*FA
           ELSE
                SUM=SUM+3.0*FA
           ENDIF
        ENDDO
        STOP
        END
