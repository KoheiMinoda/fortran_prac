program gyouwa

implicit none
integer :: I,J, M, N
real :: S, T
real, dimension (10,10) :: A
real, dimension (10) :: G, R

write(*,*) "M, N"
read(*,*) M, N
do I = 1, M
read(*,*) (A(I, J), J = 1, N)
end do

T = 0.0
do I = 1, M
S = 0.0
do J = 1, N
S = S + A(I, J)
end do
G(I) = S
T = T + S
end do

do J = 1, N
S = 0.0
do I = 1, M
S = S + A(I, J)
end do
R(J) = S
end do

do I = 1,M 
write(*,"(1X, 10F8.3)") (A(I, J), J = 1, N), G(I)
end do
write(*,"(1X, 10F8.3)") (R(J), J = 1, N), T

stop

end program
