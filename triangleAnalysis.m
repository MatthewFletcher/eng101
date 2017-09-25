%triangleAnalysis 


%Tells area, perimeter, and semiperimeter of triangle 

%% housekeeping
clear;
clc;

%% input
a = input('Length of side a: ');
b = input('Length of side b: ');
c = input('Length of side c: ');

%% processing steps 

perimeter = a+b+c;

s = perimeter/2;

area=(s*(s-a)*(s-b)*(s-c))^0.5;



%% output
perimeter
s
area



% Two percent signs allows for logical arrangement of code. 

