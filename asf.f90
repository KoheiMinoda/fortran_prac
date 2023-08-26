program asf

implicit none
real :: A, B, X, Y
integer :: I


write(*,*) "A, B = "
read(*,*) A, B
do I = 1,5
write(*,*) "X = "
read(*,*) X
Y = F(X)
write(*,*) "Y = ", Y
end do
stop

contains
function F(X)
implicit none
real :: F
real, intent(in) :: X
F = A*X + B
return
end function F

end program asf
