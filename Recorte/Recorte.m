clc
clear all
close all

Imagem = imread('AtividadeRecorte.bmp','bmp');
Imagem2 = 255*uint8(ones(size(Imagem,1),size(Imagem,2),3));
Imagem2(15:346, 53:478, :) = Imagem(15:346, 53:478, :);
Imagem3 = 255*uint8(ones(size(Imagem,1),size(Imagem,2),3));

img=rgb2gray(Imagem2);
img=imcomplement(img);
umb=graythresh(img);
bw=im2bw(img,umb);

[L Ne]=bwlabel(bw);
propied=regionprops(L,'all');

s = find([propied.Area] < 600);

for n = 1:size(s,2)
    d = round(propied(s(n)).BoundingBox);
    Imagem3(d(2):d(2)+d(4), d(1):d(1)+d(3),:) = Imagem2(d(2):d(2)+d(4), d(1):d(1)+d(3),:);
end

imshow(Imagem3)