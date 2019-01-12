k=input("Enter the number of cases:")
function y=f(x)
y=((gamma(n/2+d/2)*n)*((n/d)*x)^((n/2-1))/((gamma(n/2)*gamma(d/2)*d)*(1+(n/d)*x)^(n/2)+d/2))
endfunction
for i=1:k
d=input('Enter the d value:')
n=input('Enter the n value:')
x=1:2:100;
y=feval(x,f)
xlabel('N')
ylabel('D')
title("GRAPH OF F-DISTRIBUTION")
plot2d(x,y,i+1,"F-DISTRIBUTION")
legends("N=",string(n),"D=",string(d))
end
deff('z=q(x,n,d)','z=((gamma(n/2+d/2)*n)*((n/d)*x)^((n/2-1))/((gamma(n/2)*gamma(d/2)*d)*(1+(n/d)*x)^(n/2)+d/2))')
