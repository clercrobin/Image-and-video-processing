%Lab 1 - Robin Clerc 20/09/2017
clear all;
close all;
clc;

% Exercise 2 : Image quantization
figure(11)
lena_png = imread('./images/lena-y.png');
imshow(lena_png);


for i=1:8
    figure(12+i)
    gray_levels = 2^i;
    quantized_image = quantization(lena_png,gray_levels);
    imshow(quantized_image./256)
end
% Between 16 and 8