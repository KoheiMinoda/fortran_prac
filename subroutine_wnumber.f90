subroutine wnumber(X, Wk0)
implicit none
double precision Wk0
double precision X, a, p
integer i
	
double precision c(9), b(6), sum
	
data c/1.D0, -0.33333372D0, -0.01109668D0, 0.01726435D0, 0.01325580D0, -0.00116594D0, 0.00829006D0, -0.01252603D0, 0.00404923D0/
data b/0.000000122D0, 0.073250017D0, -0.00989981D0, 0.002640863D0, -0.000829239D0, -0.000176411D0/
save b, c
	
if(X.LT.0.0D0) stop "error at wnumber"
if(X.LT.2.0D0) then
a = 0.5D0*X
p = 1.0D0
sum = c(1)
do i = 2, 9
p = p*a
sum = sum + c(i)*p
enddo
Wk0 = SQRT(X)/sum
else
a = 0.5D0*X*exp(4.0D0-2.0D0*X)
p = 1.0D0
sum = b(1)
do i = 2, 6
p = p*a
sum = sum + b(i)*p
enddo
Wk0 = X + sum
endif
end subroutine 
	
