%    _     _      _     _      _     _      _     _      _     _
%   (c).-.(c)    (c).-.(c)    (c).-.(c)    (c).-.(c)    (c).-.(c)
%    / ._. \      / ._. \      / ._. \      / ._. \      / ._. \ 
%  __\( Y )/__  __\( Y )/__  __\( Y )/__  __\( Y )/__  __\( Y )/__
% (_.-/'-'\-._)(_.-/'-'\-._)(_.-/'-'\-._)(_.-/'-'\-._)(_.-/'-'\-._)
%    || O ||      || O ||      || O ||      || O ||      || O ||   
%  _.' `-' '._  _.' `-' '._  _.' `-' '._  _.' `-' '._  _.' `-' '._  
% (.-./`-'\.-.)(.-./`-'\.-.)(.-./`-'\.-.)(.-./`-'\.-.)(.-./`-'\.-.)
%  `-'     `-'  `-'     `-'  `-'     `-'  `-'     `-'  `-'     `-'  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Author:  Matt Fletcher                                          %
%    Class:  ENG101, Fall, 2017                                     %
%  Helpers:  None                                                   %
%                                                                   %
%  Program:  ENG101 Homework 4                                      %
% Due Date:  25 Sep 2017                                            %
%                                                                   %
% Language:  MatLab                                                 %
%      IDE:  MatLab R2017a                                          %
%                                                                   %
% Purpose:   Perform requested tasks from Homework 4                %
%                                                                   %
%                                                                   %
%                                                                   %
%   "Undocumented features": None.                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%Clear console and all variables. 
clear;
clc;




        
        


%% Problem 1 
clear;
% Form Velocity Vector & Angle Vectors
v = (10:2:20)';          % m/s
theta = 50:10:80;     % degrees
g=9.8;                 %m/s^2
% Preallocate h matrix
h = zeros(length(theta),length(v));
% Two For Loops
for indx = 1:length(theta)
    for jndx = 1:length(v)
       h=v.^2.*sind(theta)/(2*g);  
    end
end

fprintf('Solution to problem 1')
%Set array to a table. 
array2table(h)

    
%% Problem 2



%% Problem 2 with For Loop
%Format numbers as long
format long


fprintf('\n\n\n Leibnitz using for loop \n\n')
%Set number of trials 
num_trials=10.^(2:6);

%Start counter
idx=0;

%Print desired value 
fprintf('The desired value is %f. \n', pi/4)


%Initialize sum
sum_leib=0;

%For loop to calculate value of summation. 
for idx = 0:num_trials(end)
    %Defined by equation
    leib = ((-1)^idx)/(2*idx+1);

    %Use recursion to add sum for k=idx to the current sum.
    sum_leib=sum_leib+leib;

    %Increase index by 1
    idx=idx+1;

    %Print out results at given values. 
    if (idx==100||idx==1000||idx==10000||idx==1000000)
        fprintf('When k equals %d, the summation equals %f \n',idx, sum_leib)
    end
end


%While loop to calculate required number of iterations until
%the error is less than the desired amount.
fprintf('\n\n\n Leibnitz using a while loop \n\n')
%Set error amount
%TODO make error smaller after debugging
error=1e-7;

%Set desired value equal to pi/4
leib_actual=pi/4;

%Set index value
idx=0;

%Set initial value of leib
sum_leib=0;

%While loop
while abs(sum_leib-leib_actual)>error 
    leib = ((-1)^idx)/(2*idx+1);
    sum_leib=sum_leib+leib;
    idx=idx+1;
end
%Print result
fprintf('Solution \n') 
fprintf('To get within %1.1E of pi/4, %d iterations are required.\n ', error, idx)



    
    
%% Problem 3
%TODO create vectorizing version
        
        
        
        
    