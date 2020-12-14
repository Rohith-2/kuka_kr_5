function x = IK(i)
n=6;

l=[-155,-65,-68,-350,50,-530];
u=[155,180,105,350,310,170]; 

fun = @(X)fitness(i,X);

[x,~] = ga(fun,n,[],[],[],[],l,u);
%x = particleswarm(a,6);

 function y = fitness(i,x)
    a = FK(x);
    p = [a(1:3,4);rad2deg(tr2rpy(a(1:3,1:3),'zyx'))']';
    del_e = i - p;
    y = norm(del_e + 2*ones(length(del_e)));
 end
end