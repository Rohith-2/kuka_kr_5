function T = FK(a)
q1 = a(1);q2=a(2);q3=a(3);q4=a(4);q5=a(5);q6=a(6);

b1 = 400 ; a1 = 180 ; al1 = deg2rad(90);
b2 = 0   ; a2 = 600 ; al2 = deg2rad(90) ;
b3 = 0   ; a3 = 120 ; al3 = deg2rad(0);
b4 = 620 ; a4 = 0   ; al4 = deg2rad(90); 
b5 = 0   ; a5 = 0   ; al5 = deg2rad(90);
b6 = 115 ; a6 = 0   ; al6 = deg2rad(0) ;

T = H(q1,al1,a1,b1) * H(q2,al2,a2,b2) * H(q3,al3,a3,b3) * H(q4,al4,a4,b4) * H(q5,al5,a5,b5) * H(q6,al6,a6,b6);
end
function a = H(q,al,a,d)
a = (transl(0,0,d)*trotz(q,'deg'))*(transl(a,0,0)*trotx(al));
end
