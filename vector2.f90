program vector2

implicit none
integer :: N
real :: ALPHA
real, dimension(3) :: A, B, C

write(*,*) "A = "
read(*,*) A

write(*,*) "ALPHA = "
read(*,*) ALPHA

write(*,*) "N = "
read(*,*) N

B = ALPHA*A
C = A**N

write(*,*) B
write(*,*) C
stop

end program
