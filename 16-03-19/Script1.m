%script 1%
clc
clear all
close all

img = uint8(255*ones(10,10));

figure(1)
imshow(img);
linha_h = zeros (1,4);
linha_v = linha_h';
img(3,5:8)=linha_h;
figure(2)
imshow(img);
img(7:10,9)=linha_v;
figure(3)
imshow(img);
imwrite(img,'minha_img_1.bmp','bmp');