[fd,SST,Sheetnames,Sheetpos]=xls_open('C:\Users\elcot\Downloads\irisss.xls')
Sheets=readxls('C:\Users\elcot\Downloads\irisss.xls')
typeof(Sheets)
data=Sheets(1)
d=data(3:152,2:6)
k=1
l=1
m=1
fori=1:150
if d(i,5)==1then
t1(k)=i
k=k+1
elseif d(i,5)==2then
t2(l)=i
l=l+1
elseif d(i,5)==3then
t3(m)=i
m=m+1
end
end
end
end
function[v]=vari(t, k)
for i=1:4
tp=0
for j=t(1):t(15)
tp(j)=d(j,i)
end
v(i)=variance(tp)
end
endfunction
v1=vari(t1,k)
v2=vari(t2,l)
v3=vari(t3,l)
function[f]=ft(a, b)
for i=1:4
f(i)=a(i)/b(i)
end
endfunction
f1=ft(v1,v2)
f2=ft(v2,v3)
f3=ft(v3,v1)
disp("The first f-test calculated value for the comparison of flowers veriscolor and setosa is:"+string(f1))
disp("The second f-test calculated value for the comparison of flowers setosa and virginica is:"+string(f2))
disp("The third f-test calculated value for the comparison of flowers veriscolor and virginica is:"+string(f3))
mclose(fd)
