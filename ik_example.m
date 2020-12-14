clc
clear all
i = [800,0,1005, 180,0,0];%Input coordinates
disp("Input Coordinates :");
disp(i);
disp("Angles:")
%x = IK(i);
A = IK_fast(i)