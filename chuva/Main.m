clc
clear all
close all

Fundo = imread('ceu.bmp');
Menina = imread('menina.bmp');
Menina = imresize(Menina,0.2);

[yMax , XMax] = size(Fundo(:,:,1));
chuvaMatrix = zeros(yMax, XMax);

for TamanhoMaximo=1:5:495
    novachuva = round(rand(1, XMax));
    chuvaMatrix = [novachuva; zeros(4,XMax); chuvaMatrix(1:end-5,:)];
    fundo2 = Fundo;
    for y=1:5:yMax
        for x=1:5:XMax
            if(chuvaMatrix(y,x) == 1)
                fundo2(y : y+2, x : x+1,:) = corChuva;
            end
        end
    end
    fundo2(300:387,TamanhoMaximo:TamanhoMaximo+59,:) = Menina;
    imshow(fundo2);
end

function pingo=corChuva()
    for x=1:1:3
        chuva(1:3,1:2,x) = round(255*rand);
    end
    pingo = chuva;
end