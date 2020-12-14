function x = IK_new(i)

a = @(X)fitness(i,X);
x = particleswarm(a,6);

 function y = fitness(i,x)
    a = FK(x);
    del_e = i - p;
    y = norm(del_e + 2*ones(length(del_e)));
 end
end