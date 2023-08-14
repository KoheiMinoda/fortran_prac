program do

implicit none
integer :: A, L, K

write(*,*) "A = "
read(*,*) A
write(*,*) "little ", "price"
do L = 1,10
K = A*L
write(*,*) L,K
end do
stop

end program
