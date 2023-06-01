function x=gs(A,x0,b)
D=diag(diag(A));
L=-tril(A,-1);
U=-triu(A,1);
B=(D-L)\U;
f=(D-L)\b;
x(:,1)=x0;
for k=1:50
    x(:,k+1)=B*x(:,k)+f;
    X=x(:,k+1)-x(:,k);
    n=norm(X,inf);
    if n<10^(-5)
        break;
    end
end