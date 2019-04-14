clc
clear all
close all

TelaTotal=uint8(255*ones(400,400));

Tamanho=50;
a=80;
b=90;
c=100;

x1=200;
y1=200;

x=x1;
for y=y1:-1:y1-a
    TelaTotal(y,x)=0;
end

x=x1;
for y=y1:y1+(a/2)+round(c*cos(pi/3))
    TelaTotal(y,round(x))=0;
    x=x-cos(pi);
end

x=x1;
for y=y1:y1+(a/2)+round(c*cos(pi/3))
    TelaTotal(y,round(x))=0;
    x=x+cos(pi);
end

y2=y1-(a/2)+2;
x=x1;
for y=y2:y1+round(c*cos(pi/3))
    TelaTotal(y,round(x))=0;
    x=x-cos(5*pi/3);
end

x=x1;
for y=y2:y1+round(c*cos(pi/3))
    TelaTotal(y,round(x))=0;
    x=x+cos(5*pi/3);
end


y=y1+round(c*cos(pi/3));
x1 = 156;

for x=x1:x1+b-2
    TelaTotal(y,x)=0;
    figure(1)
end

figure(1)
imshow(TelaTotal);