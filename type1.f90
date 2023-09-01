program type1

implicit none
type :: BUNSUU
integer :: BUNSI, BUNBO
end type BUNSUU

type(BUNSUU) :: A,B,C
A = BUNSUU(1,2)
B = BUNSUU(1,3)
C%BUNBO = A%BUNBO * B%BUNBO
C%BUNSI = A%BUNSI*B%BUNBO + B%BUNSI*A%BUNBO
write(*,"(1X, I2, A, I2, A)") A%BUNSI, "/", A%BUNBO, "+"
write(*,"(1X, I2, A, I2, A)") B%BUNSI, "/", B%BUNBO, "="
write(*,"(1X, I2, A, I2)") C%BUNSI, "/", C%BUNBO
stop

end program
