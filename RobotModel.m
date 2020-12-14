clc
close all
clear vars
L1 = Link('d',400,'a',180,'alpha',pi/2);
L2 = Link('d',0,'a',600,'alpha',pi/2);
L3 = Link('d',0,'a',120,'alpha',0);
L4 = Link('d',620,'a',0,'alpha',pi/2);
L5 = Link('d',0,'a',0,'alpha',pi/2);
L6 = Link('d',0,'a',0,'alpha',0);

K = SerialLink([L1 L2 L3 L4 L5 L6],'name','KUKA KR 5');
A = csvread("PSO_Out.csv");
% %A = [800,0, 1005, 180,0,0];
% [p,q] = size(A);
% a=[];
% for i = 1:p
% a = [a;IK_fast(A(i,:))];
% end
% %A = [0,90,0,0,270,-180];
t = deg2rad(A);
%K.model3d = 'KUKA/KR5_arc';
plot(K,t,'trail','-ko')