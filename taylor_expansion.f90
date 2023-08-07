program taylor_expansion

implicit none
real(8) :: x = 0.d0, dx = 0.1d0
integer :: i
integer :: n = 21
do i = 1, 300
write (*, *) x, sin(x), taylor_sin(x, n)
x = x + dx
enddo
stop

contains

function taylor_sin(x, n)
implicit none
integer, intent(in) :: n
double precision, intent(in) :: x
integer :: i
double precision :: taylor_sin, inc, sinx
inc = x
sinx = x
do i = 1, n
inc = inc*(-1)*x**2/((2*i)*(2*i+1))
sinx = sinx + inc
enddo
taylor_sin = sinx
end function taylor_sin

end program taylor_expansion
