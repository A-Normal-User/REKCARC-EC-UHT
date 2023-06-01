function [h,sig]=pttest2(n1,n2,xbar,ybar,s1,s2,alpha,tail)
ss=((n1-1)*s1^2+(n2-1)*s2^2)/(n1+n2-2);
t=(xbar-ybar)/sqrt(ss/n1+ss/n2);
if tail==0
    sig=2*(1-tcdf(abs(t),n1+n2-2));
    if abs(t)<tinv(1-alpha/2,n1+n2-2)
        h=0;
    else h=1;
    end
end
if tail==1
    sig=1-tcdf((t),n1+n2-2);
    if t<tinv(1-alpha,n1+n2-2)
        h=0;
    else h=1;
    end
end
if tail==-1
    sig=tcdf((t),n1+n2-2);
    if t>tinv(alpha,n1+n2-2)
        h=0;
    else h=1;
    end
end

    
