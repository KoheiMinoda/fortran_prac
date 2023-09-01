program type2

implicit none
type :: BUNSUU
integer :: BUNSI, BUNBO
end type BUNSUU

type(BUNSUU) :: A,B,C

write(*,*) "numerator of A is"
read(*,*) A%BUNSI
write(*,*) "denominator of A is"
read(*,*) A%BUNBO
write(*,*) "numerator of B is"
read(*,*) B%BUNSI
write(*,*) "denominator of B is"
read(*,*) B%BUNBO

C%BUNBO = A%BUNBO * B%BUNBO
C%BUNSI = A%BUNSI*B%BUNBO + B%BUNSI*A%BUNBO

write(*,"(1X, I2, A, I2, A)") A%BUNSI, "/", A%BUNBO, "+"
write(*,"(1X, I2, A, I2, A)") B%BUNSI, "/", B%BUNBO, "="
write(*,"(1X, I2, A, I2)") C%BUNSI, "/", C%BUNBO
stop

end program
