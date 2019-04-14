%script 3%
clc
clear all
close all
img1 = imread('img_rodada_nearest45.bmp','bmp');
figure(1)
imshow(img1);
img2 = imresize(img1,3,'nearest');
figure(2)
imshow(img2);
img3 = imresize(img1,3,'bicubic');
figure(3)
imshow(img3);