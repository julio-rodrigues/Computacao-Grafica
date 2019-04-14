%script 2%
clc
clear all
close all
img = imread('minha_img_1.bmp','bmp');
figure(1)
imshow(img);
img2 = imrotate(img,45,'nearest');
imwrite(img2,'img_rodada_nearest45.bmp','bmp');
figure(2)
imshow(img2);
img3 = imrotate(img,45,'bicubic');
imwrite(img2,'img_rodada_bicubic45.bmp','bmp');
figure(3)
imshow(img3);