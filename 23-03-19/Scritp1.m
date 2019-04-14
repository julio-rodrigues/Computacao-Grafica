clc
clear all
close all

TelaTotal=uint8(255*ones(300,300,3));

A=30;
B=40;
C=50;
x=162;


%x140 y250
for z=207:207+round(C*cos(pi/6))
    TelaTotal(z,round(x),:)=0;
    TelaTotal(z-30,round(x)-40,:)=0;
    TelaTotal(z-30,round(x),:)=0;
    x=x-sin(pi/6);
end

for x=100:100+B;
    TelaTotal(250,x,:)=0;
    TelaTotal(250-A,x,:)=0;
    TelaTotal(177,x+22,:)=0;
end

for y=250:-1:250-A
    TelaTotal(y,100,:)=0;
    TelaTotal(y,100+B,:)=0;
    TelaTotal(y-43,162,:)=0;
end

figure(1)
imshow(TelaTotal)