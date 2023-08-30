program hukusosuu

implicit none
complex :: Z1, Z2, WA, SA, SEKI, SHOU
write(*,*) "Z1 like (1,1)"
read(*,*) Z1
write(*,*) "Z2 like (2,2)"
read(*,*) Z2

WA = Z1 + Z2
SA = Z1 - Z2
SEKI = Z1 * Z2
SHOU = Z1 / Z2

write(*,*) "Z1 + Z2", WA
write(*,*) "Z1 - Z2", SA
write(*,*) "Z1 * Z2", SEKI
write(*,*) "Z1 / Z2", SHOU

stop

end program
