%Lab 1 - Robin Clerc 20/09/2017
clear all;
close all;
clc;

% Exercise 4 : Correlation


noise_std_deviation = 0;

figure(22)
gold_text_png = imread('./images/gold-text.png');
gold_text_png = uint8(randn(size(gold_text_png)).* noise_std_deviation) + gold_text_png;
imshow(gold_text_png);
gold_text_png = im2double(gold_text_png);
gold_text_png = gold_text_png - 0.5;


figure(27)
g_letter_png = imread('./images/g-letter.png');
imshow(g_letter_png);
g_letter_png = im2double(g_letter_png);
g_letter_png = g_letter_png - 0.5;

 
figure(28)
g_letter_flipped = flipdim(g_letter_png,2);      %# Flips the columns, making a mirror image
g_letter_flipped = flipdim(g_letter_flipped,1);  %# Flips the rows, making an upside-down image
imshow(g_letter_flipped);

https://www.google.ch/search?q=cross+correlation+frequency+domain&rlz=1C1GTPM_enCH763CH763&oq=cross+correlqtion+fre&aqs=chrome.1.69i57j0l5.6647j0j7&sourceid=chrome&ie=UTF-8
figure(28)
fft_gold_text_png = fft2(gold_text_png);
imagesc(abs(fftshift(fft_gold_text_png)));

figure(29)
fft_g_letter_png = fft2(g_letter_png);
imagesc(abs(fftshift(fft_g_letter_png)));

fft_mult = fft_gold_text_png * fft_g_letter_png

spatial_corr = conv2(gold_text_png,g_letter_flipped,'same');
[row, col] = find(ismember(spatial_corr, max(spatial_corr(:))))
mesh(spatial_corr);


noise_added = 1;
noise_std_deviation = 5;
noise = randn(size(gold_text_png)).* noise_std_deviation;

