program kannsuuplot

implicit none
integer, parameter :: N = 16
integer :: I, J, IY 
real :: C, DX, X, Y, EN
real :: XMIN, XMAX, YMIN, YMAX
real, dimension(0:N) :: YY

interface
function F(X)
implicit none
real :: F
real, intent(in) :: X
end function F
end interface

EN = N
write(*,*) "XMIN, XMAX = "
read(*,*) XMIN, XMAX
DX = (XMAX - XMIN) / EN

do I = 0, N
X = XMIN + DX*real(I)
YY(I) = F(X)
end do

YMIN = YY(0)
YMAX = YY(0)
do I = 1, N
Y = YY(I)
if(Y < YMIN) then
YMIN = Y
else if(Y > YMAX) then
YMAX = Y
end if
end do

C = 50.0 / (YMAX - YMIN)
do I = 0,N
IY = (YY(I) - YMIN) * C
write(*,"(1X, 63A1)") ("",J = 0, IY), "*"
end do
stop

end program

function F(X)
implicit none
real :: F
real, intent(in) :: X
F = EXP(X)*SIN(5.0*X)
return
end function F
