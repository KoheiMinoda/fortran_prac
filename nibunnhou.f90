program nibunnhou

implicit none
real :: X, Y, XM, XP
integer :: KAISU

XM = 0.0
XP = 1.0

do KAISU = 1,20
X = (XM + XP) / 2.0
Y = F(X)
IF (Y < 0.0) then
XM = X
else
XP = X
end if
end do

write(*,"(1X, A, F10.6)") "X = ", X
write(*,"(1X, A, F10.6)") "Y = ", Y
stop

contains

function F(X)
implicit none
real :: F
real, intent(in) :: X
F = X - COS(X)
return
end function F

end program nibunnhou
