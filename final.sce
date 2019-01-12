[fd,SST,Sheetnames,Sheetpos] = xls_open('C:\Users\elcot\Downloads\irisss.xls')
Sheets = readxls('C:\Users\elcot\Downloads\irisss.xls')
typeof(Sheets)
data=Sheets(1)
d=data(3:152,2:6)
k=1
l=1
m=1
for i=1:150
    if d(i,5)==1 then
        t1(k)=i
        k=k+1
    else if d(i,5)==2 then
            t2(l)=i
            l=l+1
         else if d(i,5)==3 then
                 t3(m)=i
                 m=m+1
             end
         end
     end
end
n=input("Enter the size of sample:")
function [v]=vari(t,k,n)
    for i=1:4
        tp=0
        for j=t(1):t(n)
            tp(j)=d(j,i)
        end
        v(i)=variance(tp)//v(1)=samp var of sepal length
    end
   
endfunction
disp("The sample variances of sepal length,sepal width,petal length,petal width are given respectively as:")
disp("The calculations of versicolor:")
v1=vari(t1,k,n)
disp(v1)
disp("The calculations of setosa:")
v2=vari(t2,l,n)
disp(v2)
disp("The calculations of virginica:")
v3=vari(t3,m,n)
disp(v3)
function [f]=ft(a,b)
    for i=1:4
        f(i)=a(i)/b(i)
    end
endfunction

f1=ft(v1,v2)

f2=ft(v2,v3)

f3=ft(v3,v1)
        disp("SEPAL LENGTH:")
        disp(f1(1),f2(1),f3(1))
        disp("SEPAL WIDTH:")
         disp(f1(2),f2(2),f3(2))
        disp("PETAL LENGTH:")  
        disp(f1(3),f2(3),f3(3))
        disp("PETAL WIDTH")
        disp(f1(4),f2(4),f3(4))

alpha=2.4630
disp("The table value of level of significance at 5% is:2.4630")
function [st]=pr(i)
    if i==1
        st="VERSICOLOR"
        end
    if i==2
        st="SETOSA"
        end
    if i==3
        st="VIRGINICA"
        end
endfunction
for i=1:4
 //if i==1
    if f1(i)<alpha
    disp("RESULT FOR F TEST"+string(i))
    disp(pr(1)+"&"+pr(2))
    disp("calculated value is less than table value")
    disp("Therefore the variances of flowers are same")
    disp("The variances are significant")
    else
        disp("RESULT FOR F TEST"+string(i))
        disp(pr(1)+"&"+pr(2))
        disp("calculated value is more than table value")
        disp("The variances are not significant")

end

if f2(i)<alpha
    disp("RESULT FOR F TEST"+string(i))
    disp(pr(2)+"&"+pr(3))
    disp("calculated value is less than table value")
    disp("Therefore the variances of flowers are same")
    disp("The variances are significant")
    else
        disp("RESULT FOR F TEST"+string(i))
        disp(pr(2)+"&"+pr(3))
        disp("calculated value is more than table value")
        disp("The variances are not significant")
end

if f3(i)<alpha
    disp("RESULT FOR F TEST"+string(i))
    disp(pr(3)+"&"+pr(1))
    disp("calculated value is less than table value")
    disp("Therefore the variances of flowers are same")
    disp("The variances are significant")
    else
        disp("RESULT FOR F TEST"+string(i))
        disp(pr(3)+"&"+pr(1))
        disp("calculated value is more than table value")
        disp("The variances are not significant")
end
end
mclose(fd)
