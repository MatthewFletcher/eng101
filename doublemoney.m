%% Housekeeping

clear;
clc;
format bank

%% input 
value=input('Amount to invest>> ');
interest=input('Interest Rate (%)>> ');

value_i=value;
year = 0;

%% calculation

%Set interest rate to decimal
interest=interest/100;

%While Loop 
while value<value_i*2
   value=value*interest + value;
   year=year+1;
end
disp('Year of doubling initial value:')
year