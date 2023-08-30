program baiseido

implicit none
real, dimension(3) :: X, Y
real(8) :: R, T

interface
function SP(A, B, N)
implicit none
real(8) :: SP
real, dimension(*), intent(in) :: A, B
integer, intent(in) :: N
end function SP
end interface

write(*,*) "X(1), X(2), X(3) = "
read(*,*) X
write(*,*) "Y(1), Y(2), Y(3) = "
read(*,*) Y
R = SP(X, Y, 3)/SQRT(SP(X,X,3)*SP(Y,Y,3))
T = ACOS(R)*180.0D0/3.14159265359D0
write(*,"(1X, A, F6.2)") "the angle between vector X and vector Y is", T
stop 

end program

function SP(A, B, N)
implicit none
real(8) :: SP
real, dimension(*), intent(in) :: A, B
integer, intent(in) :: N
real(8) :: S
integer :: I
S = 0.0D-30
do I = 1, N
S = dprod(A(I), B(I)) + S
end do
SP = S
return
end function
