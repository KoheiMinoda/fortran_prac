program zyusin

implicit none
real, dimension(2) :: P, Q, R, C

write(*,*) "P = "
read(*,*) P

write(*,*) "Q = "
read(*,*) Q

write(*,*) "R = "
read(*,*) R

C = (P + Q + R)/3.0

write(*,*) C

stop

end program
