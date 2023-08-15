program average

implicit none
integer :: I, N
real :: S, SS, HEIKIN, BUNSAN, SIGMA
real, dimension(100) ::  A

write(*,*) "N="
read(*,*) N
do I = 1,N
write(*,"(1X, A2, I2, A2)") "A(",I,")="
read(*,*) A(I)
end do

S = 0.0
do I = 1, N
S = S + A(I)
end do
HEIKIN = S/N

SS = 0.0
do I =1, N
SS = SS + (A(I) - HEIKIN)**2
enddo
BUNSAN = SS / REAL(N)

SIGMA = SQRT(BUNSAN)

write(*,*) "HEIKIN is ", HEIKIN
write(*,*) "BUNSAN is ", BUNSAN   
write(*,*) "SIGMA is ", SIGMA 

stop

end program
