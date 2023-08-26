program aplusb

implicit none
integer :: A, B, C

interface
function WA(X, Y)
implicit none
integer :: WA
integer, intent(in) :: X, Y
end function WA
end interface

write(*,*) "A, B = "
read(*,*) A, B
C = WA(A, B)
write(*,*) "C = ", C
stop

end program


function WA(X, Y)

implicit none
integer :: WA
integer, intent(in) :: X, Y
WA = X + Y
return

end function WA
