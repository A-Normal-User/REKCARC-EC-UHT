sx=80;sy=50;r=0.4;
a=-100;b=100;c=-100;d=100;
n=100000;m=0;z=0;
x=unifrnd(a,b,1,n);
y=unifrnd(c,d,1,n);
for i=1:n
    if x(i)^2+y(i)^2<=100^2
        u=exp(-0.5/(1-r^2)*(x(i)^2/sx^2-2*r*x(i)*y(i)/sx/sy+y(i)^2/sy^2));
        z=z+u;
        m=m+1;
    end
end
P=(b-a)*(d-c)*z/2/pi/sx/sy/sqrt(1-r^2)/n
