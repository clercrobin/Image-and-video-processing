clear all;
close all;
clc;
% Exercise 7 : Phase and magnitude of the 2DFT
figure(50)
weber_matrix = weber(17,19,10);
imshow(weber_matrix,[0,255])

%For Lb = 10
%4 - 13
%10 - 15
%17 - 19
%50 - 53
%70 - 72
%120 - 122
%150 - 152
%200 - 202

%For Lb = 200
%4 - 17
%10 - 19
%17 - 22
%20 - 26
%30 - 33