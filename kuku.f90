program mass

implicit none
integer :: I,J
integer, dimension (9, 9) :: KUKU

do I = 1, 9
do J = 1, 9

KUKU(I, J) = I * J 

end do
end do

write(*,"(1X, 9I5)") KUKU

stop

end program
