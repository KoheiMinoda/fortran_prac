program aplusb

implicit none
integer :: a, b, c
interface

subroutine wa(X, Y, Z)
integer, intent(in) :: X, Y
integer, intent(out) :: Z
end subroutine wa
end interface

write(*,*) "A, B = "
read(*,*) A, B
call wa(A, B, C)
write(*,*) "C = ", C
stop

end program


subroutine wa(X, Y, Z)

implicit none
integer, intent(in) :: X, Y
integer, intent(out) :: Z
Z = X + Y
return

end subroutine
