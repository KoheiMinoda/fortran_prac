program newton

implicit none
real :: X, Y, DY, EPS = 0.00001
integer :: KAISUU

X = 1.0
do KAISUU = 1, 100
Y = F(X)
DY = DF(X)
if(ABS(DY) < EPS) then
write(*,*) "NG"
stop
end if
X = X - Y / DY
if(ABS(Y) < EPS) exit
if(ABS(Y/DY) < EPS) exit
end do

write(*,"(1X, A, F10.6)") "X = ", X
write(*,"(1X, A, F10.6)") "Y = ", F(X)
stop

contains

function F(X)
implicit none
real :: F
real, intent(in) :: X
F = X - COS(X)
return
end function F

function DF(X)
implicit none
real :: DF
real, intent(in) :: X
DF = 1.0 + SIN(X)
return
end function DF

end program newton
