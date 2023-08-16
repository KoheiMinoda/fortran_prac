program vector3

implicit none
real, dimension(5) :: A, B, C
real :: S

write(*,*) "A = "
read(*,*) A

write(*,*) "B = "
read(*,*) B

C = A * B
S = DOT_PRODUCT(A,B)

write(*,"(1X,5f5.0)") C
write(*,*) "DOT_PRODUCT(A,B) = " , S
 
stop

end program
