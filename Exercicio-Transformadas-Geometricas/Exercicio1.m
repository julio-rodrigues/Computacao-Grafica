clc
clear all
close all

TelaTotal = uint8(255*ones(80,80));
%TelaTotal(Y-0:Y,X-0:X) = zeros(1,20);
%PARTE DEBAIXO DA FLECHA
TelaTotal(40,1:20) = zeros(1,20);
TelaTotal(40,60:79) = zeros(1,20);
%LATERAIS
TelaTotal(40:79,20) = zeros(1,40);
TelaTotal(40:79,60) = zeros(1,40);
%PARTE DEBAIXO
TelaTotal(79,20:60) = zeros(1,41);
%Flecha
y=40
for x=1:40
    TelaTotal(y,x)=0;
    y=y-1;
end
y=1
for x=40:79
    TelaTotal(y,x)=0;
    y=y+1;
end

imwrite(TelaTotal,'flecha.bmp','bmp');
I = imread('flecha.bmp');
y=-45;
for x=1:8
    R = imrotate(I,y,'bilinear');
    figure(1)
    imshow(R)
    y=y-45;
end
