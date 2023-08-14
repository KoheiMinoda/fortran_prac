program sum

implicit none
integer :: I, N
real :: A, S

write(*,*) "N = "
read(*,*) N
A = 1.0
S = 1.0

do I = 1,N
A = A/real(I)
S = S + A
end do

write(*,*) "the sum from 1 to N is", S

stop

end program
