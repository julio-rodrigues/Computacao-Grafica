clc
clear all
close all

%patch([x],[y],[z],'COR')
%patch([0,3,3,0],[0,0,2,2],[0,0,0,0],'blue')
%frente
x = [0 1 1 3 3 4 4 3 3 1 1 0];
y = [0 0 1 1 0 0 2 2 3 3 2 2];
z = [0 0 0 0 0 0 0 0 0 0 0 0];
patch(x,y,z,'blue')
%tras
x = [0 1 1 3 3 4 4 3 3 1 1 0];
y = [0 0 1 1 0 0 2 2 3 3 2 2];
z = [4 4 4 4 4 4 4 4 4 4 4 4];
patch(x,y,z,'blue')
x = [0 0 0 0];
y = [0 0 2 2];
z = [4 0 0 4];
patch(x,y,z,'blue')
x = [0 1 1 0];
y = [2 2 2 2];
z = [0 0 4 4];
patch(x,y,z,'blue')
x = [1 1 1 1];
y = [2 3 3 2];
z = [0 0 4 4];
patch(x,y,z,'blue')
x = [1 3 3 1];
y = [3 3 3 3];
z = [0 0 4 4];
patch(x,y,z,'blue')
x = [3 3 3 3];
y = [3 2 2 3];
z = [0 0 4 4];
patch(x,y,z,'blue')
x = [3 4 4 3];
y = [2 2 2 2];
z = [0 0 4 4];
patch(x,y,z,'blue')
x = [4 4 4 4];
y = [2 0 0 2];
z = [0 0 4 4];
patch(x,y,z,'blue')
x = [4 3 3 4];
y = [0 0 0 0];
z = [0 0 4 4];
patch(x,y,z,'blue')
x = [3 3 3 3];
y = [0 1 1 0];
z = [0 0 4 4];
patch(x,y,z,'blue')
x = [3 1 1 3];
y = [1 1 1 1];
z = [0 0 4 4];
patch(x,y,z,'blue')
x = [1 1 1 1];
y = [1 0 0 1];
z = [0 0 4 4];
patch(x,y,z,'blue')
x = [1 0 0 1];
y = [0 0 0 0];
z = [0 0 4 4];
patch(x,y,z,'blue')

xlim([-1 5])
ylim([-1 5])
zlim([-1 5])