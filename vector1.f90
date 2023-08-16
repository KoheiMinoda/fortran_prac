program vector1

implicit none
real, dimension(3) :: A, B, C

write(*,*) "A = "
read(*,*) A

write(*,*) "B = "
read(*,*) B

C = A + B 

write(*,*) C
stop

end program
