clc
clear all
close all

TelaTotal = uint8(255*ones(400,400));

%TelaTotal(Y-0:Y,X-0:X) = zeros(1,20);
%parte de baixo
TelaTotal(200,200:249) = zeros(1,50);
%laterais
TelaTotal(151:200,200) = zeros(1,50);
TelaTotal(151:200,249) = zeros(1,50);
%Cima
y=151
for x=200:225
    TelaTotal(y,x) = 0;
    y=y-1;
end
y=126
for x=225:249
    TelaTotal(y,x) = 0;
    y=y+1;
end

TelaTotal = imresize(TelaTotal,0.5,'bilinear')
TelaTotal = imrotate(TelaTotal,90,'bilinear')

figure(1)
imshow(TelaTotal)
