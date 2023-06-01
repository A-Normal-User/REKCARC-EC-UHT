function [h,sig]=ztest2(x,y,sigma1,sigma2,alpha,tail)
n1=length(x);
n2=length(y);
xbar=mean(x);
ybar=mean(y);
z=(xbar-ybar)/sqrt((sigma1^2)/n1+(sigma2^2)/n2);
if tail==0
    sig=2*(1-normcdf(abs(z)));
    if abs(z)<norminv(1-alpha/2)
        h=0;
    else h=1;
    end
end
if tail==-1
    sig=normcdf(z);
    if z>norminv(alpha)
        h=0;
    else h=1;
    end
end
if tail==1
    sig=1-normcdf(z);
    if z<norminv(1-alpha)
        h=0;
    else h=1;
    end
end

