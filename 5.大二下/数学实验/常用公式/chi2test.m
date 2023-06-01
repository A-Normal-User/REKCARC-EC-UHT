function h=chi2test(x,sigma,alpha,tail)
n=length(x);
s=std(x);
b=(n-1)*s^2/(sigma^2);
if tail==0
    if b<chi2inv(1-alpha/2,n-1)&&b>chi2inv(alpha/2,n-1)
        h=0;
    else h=1;
    end
end
if tail==1
    if b<chi2inv(1-alpha,n-1)
        h=0;
    else h=1;
    end
end
if tail==-1
    if b>chi2inv(alpha,n-1)
        h=0;
    else h=1;
    end
end

