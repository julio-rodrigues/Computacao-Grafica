clc
clear all
close all

TelaTotal=uint8(255*ones(400,400,3));

Tamanho=50;
a=80;
b=90;
c=100;

for x=140:140+b
    TelaTotal(200,x,:)=0;
    TelaTotal(200-a,x,:)=0;
end

for y=200:-1:200-a
    TelaTotal(y,140,:)=0;
    TelaTotal(y,140+b,:)=0;
end

x=183;
y1=70;
for y=y1:y1+round(c*cos(pi/3))
    TelaTotal(y,round(x),:)=0;
    TelaTotal(y,round(x+b),:)=0;
    TelaTotal((y+a),round(x+b),:)=0;
    x=x-sin(pi/3);
end

x1=183;
y=70;

for x=x1:x1+b
    TelaTotal(y,x,:)=0;
end

x1=183+b;
y1=150;

for y=y1:-1:y1-a
    TelaTotal(y,x1,:)=0;
end

figure(1)
imshow(TelaTotal);