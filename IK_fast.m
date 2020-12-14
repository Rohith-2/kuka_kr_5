function x = IK_fast(i)

th = randi(100,1,6);
a = @(X)fitness(i,X);
%options = optimset('PlotFcns',@optimplotfval);
x = fminsearch(a,th);

 function y = fitness(i,x)
    a = FK(x);
    p = [a(1:3,4);rad2deg(tr2rpy(a(1:3,1:3),'zyx'))']';
    del_e = i - p;
    y = norm(del_e + 2*ones(length(del_e)));
 end
end