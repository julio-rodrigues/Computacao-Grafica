clc
clear all
close all

TelaTotal = uint8(255*ones(10,10,3));

for x=1:10
    TelaTotal(1:10,x,1) = zeros(1,10);
end

rotacionar = imrotate(TelaTotal,45,'bicubic');
transform = affine2d([5 0 0;
                      0 1 0;
                      0 0 1]);
rotacionar = imwarp(rotacionar,transform);

inverso = imcomplement(rotacionar);

figure(1)
imshow(inverso)