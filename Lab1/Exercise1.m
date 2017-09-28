%Lab 1 - Robin Clerc 20/09/2017
clear all;
close all;
clc;

% Exercise 1 : Images and color tables

% Question 1
figure(1)
[trees_tif, map_trees_tif] = imread('./images/trees.tif');
imshow(trees_tif,map_trees_tif); % Warning : image does not support 2 arguments 

figure(2)
[lena_tif, map_lena_tif] = imread('./images/lena.tif');
image(lena_tif);

% Question 2

% Getting the gray images
figure(3)
trees_tif_gray = ind2gray(trees_tif, map_trees_tif);
imshow(trees_tif_gray);


figure(4)
lena_tif_gray = rgb2gray(lena_tif);
imshow(lena_tif_gray);

figure(5)
% Inverting the color table of the gray image TODO try with another color
% map
trees_tif_gray_inv = 255-trees_tif_gray;
imshow(trees_tif_gray_inv);

figure(51)
% Inverting the color table of the colored image and then convert them to
% gray
trees_tif_map_inv = 1 - map_trees_tif;
trees_tif_inv = ind2gray(trees_tif, trees_tif_map_inv);
imshow(trees_tif_inv);

figure(6)
lena_tif_gray_inv = 255-(lena_tif_gray);
imshow(lena_tif_gray_inv);

% Question 3
figure(7)
map_trees_tif_modified = modify_color_map(map_trees_tif, 0.5);
colormap(map_trees_tif_modified);
image(trees_tif);

figure(8)
map_trees_tif_modified = modify_color_map(map_trees_tif, 2);
colormap(map_trees_tif_modified);
image(trees_tif);

% The gamma correction is usefull to control the brightness of a picture


% Question 4

% For the indexed image
figure(9)
chess_motif = eye(2)+1; % In Matlab indexes begin at 1
chess_board_indexed = repmat(chess_motif,4);
chess_blue_yellow_color_map = [0 0 1; 1 1 0];
colormap(chess_blue_yellow_color_map);
image(chess_board_indexed);
imwrite(chess_board_indexed,chess_blue_yellow_color_map,'chess_board_indexed.tif')


% For the truecolor image
figure(10)
chess_motif_true = zeros(2,2,3);
chess_motif_true(1,1,3) = 1;
chess_motif_true(2,2,3) = 1;
chess_motif_true(1,2,1) = 1;
chess_motif_true(1,2,2) = 1;
chess_motif_true(2,1,1) = 1;
chess_motif_true(2,1,2) = 1;
chess_board_true = repmat(chess_motif_true,4);
image(chess_board_true);
imwrite(chess_board_true,'chess_board_true.tif')