%% Housekeeping

clear;
clc;
format bank

%% input 
value=input('Amount to invest>> ');
interest=input('Interest Rate (%)>> ');



time=input('How many years?>> ');
%% calculation

%Set interest rate to decimal
interest=interest/100;

%While Loop to make clean code 
%while year_count<time
   %value=value*interest + value;
   %year_count=year_count+1;
%


%For loop
for year = 1:1:time
    value=value*(1+interest);
end  
disp('Final value:')
value