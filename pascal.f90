program pascal

implicit none
integer :: I,J, N, K(8,8)

N = 8
K(1, 1) = 1

do I = 1, N-1
do J = 2, I

K(I+1, J) =  K(I, J-1) + K(I, J) 

end do

K(I+1, 1) = 1
K(I+1, I+1) = 1

end do

do I = 1,8 
write(*,"(1X, 8I4)") (K(I, J),J = 1, I)
end do

stop

end program
