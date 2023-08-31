program sanjihouteisiki

implicit none
real :: A1, A2, A3, Q, R, RR
complex :: ZR, SR, U, V, X1, X2, X3, OMEGA, OMEGA2

OMEGA = CMPLX(-0.5, sqrt(3.0)/2.0)
OMEGA2 = OMEGA**2

write(*,*) "equation"
write(*,*) "X**3 + A1**2 + A2*X + A3 = 0"
write(*,*) "solve"
write(*,*) "A1, A2, A3 = "
read(*,*) A1, A2, A3

Q = A2 - A1**2/3.0
R = A3 - A1*A2/3.0 + 2.0*A1**3/27.0
RR = R**2/4.0 + Q**3/27.0
ZR = cmplx(RR)
SR = sqrt(ZR)

if(R > 0.0) SR = -SR
U = (-R/2.0 + SR)**0.3333333
V = -Q / (3.0*U)
X1 = U + V - A1/3.0
X2 = U*OMEGA + V*OMEGA2 - cmplx(A1/3.0, 0.0)
X3 = U*OMEGA2 + V*OMEGA - cmplx(A1/3.0, 0.0)

write(*,*) "X1 =", X1
write(*,*) "X2 =", X2
write(*,*) "X3 =", X3

stop

end program
