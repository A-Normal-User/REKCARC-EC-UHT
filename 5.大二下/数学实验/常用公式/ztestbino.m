function [h,sig]=ztestbino(x,p0,alpha,tail)
n=length(x);
xbar=mean(x);
z=(xbar-p0)/sqrt(p0*(1-p0)/n);
if tail==0
    sig=2*(1-normcdf(abs(z)));
    if abs(z)<norminv(1-alpha/2)
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
if tail==-1
    sig=normcdf(z);
    if z>norminv(alpha)
        h=0;
    else h=1;
    end
end
