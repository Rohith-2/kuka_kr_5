clear all
clc
file='coordinates_gshape.csv';
A=csvread(file);
[p,q]=size(A);
IK1=[];
tic

for i=1:p
IK1=[IK1;IK(A(i,:))];
end

toc
writematrix(IK1,"GA_IK.csv");

T1=IK1(:,1);
T2=IK1(:,2);
T3=IK1(:,3);
T4=IK1(:,4);
T5=IK1(:,5);
T6=IK1(:,6);


file='gdhobara.csv';
A=csvread(file);
t1=A(:,1);
t2=A(:,2);
t3=A(:,3);
t4=A(:,4);
t5=A(:,5);
t6=A(:,6);
subplot(6,1,1)
plot(t1)
hold on
plot(T1)
ylabel("Angle Magnitude")
legend("Desired","Computed")
title('Arm angle 1')
subplot(6,1,2)
plot(t2)
hold on
plot(T2)
%ylabel("Angle Magnitude")
legend("Desired","Computed")
title('Arm angle 2')
subplot(6,1,3)
plot(t3)
hold on
plot(T3)
ylabel("Angle Magnitude")
legend("Desired","Computed")
title('Arm angle 3')
subplot(6,1,4)
plot(t4)
hold on
plot(T4)
%ylabel("Angle Magnitude")
legend("Desired","Computed")
title('Arm angle 4')
subplot(6,1,5)
plot(t5)
hold on
plot(T5)
ylabel("Angle Magnitude")
legend("Desired","Computed")
title('Arm angle 5')
subplot(6,1,6)
plot(t6)
hold on
plot(T6)
%ylabel("Angle Magnitude")
legend("Desired","Computed")
title('Arm angle 6')