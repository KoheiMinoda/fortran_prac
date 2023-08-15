program fibonacci

implicit none
integer, dimension(0:10) :: A
integer :: I

A(0) = 1.0
A(1) = 1.0

do I = 1,9
A(I+1) = A(I) + A(I-1)
end do

write(*,"(1X, 11I5)") (A(I), I = 0, 10)
stop

end program
