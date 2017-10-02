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
% Due Date:  2 Oct 2017                                             %
%                                                                   %
% Language:  MatLab                                                 %
%      IDE:  MatLab R2017a                                          %
%                                                                   %
% Purpose:   Perform requested tasks from Homework 5                %
%                                                                   %
%                                                                   %
%                                                                   %
%   "Undocumented features": None.                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Clear everything
clear;
clc;


% %% Lawn cutting problem 
% %Create a trapezoid function that integrates from a to b 
% %Has h trapezoids between curve 
% 
% %Define function
% f = @(x) x.^3;
% 
% %Define endpoints
% a = 0;
% b = 4;
% 
% %Define step size
% dx = 0.1;
% 
% % Defining trapezoid function
% 
% 
% 
% %Integrate
% fprintf(area)
% 
% %Print results
% fprintf("The integral from %f to %f of the function with steps of %f is %f", a,b,dx,area)
% 
% % function [area] = trap(a,b,dx)
% % 
% % %Calculate number of trapezoids
% % num_trap = (b-a)/(dx);
% %  
% % for idx = 1:num_trap
% %     x(idx) = a + (idx-1)*dx;
% % end
% % 
% % for jdx = 1:num_trap
% %     y(jdx) = a + f(x(idx));
% % end   
% % % Compute area using Trapz. method 
% % for idx = 1:n
% %     if ( idx == 1 || idx == n) % for the first and last data
% %         my_sum = my_sum + y(idx)./2;
% %     else
% %         my_sum = my_sum + y(idx); % for the rest of data
% %     end
% % end
% % area = my_sum * dx;
% % 
% % end


%% Fibonacci 
% Use myFactorial.m as general basis
%Use Profile viewer to profile code and see how many recursions 

clear;

%Go to n_fibb numbers
n_fibb = 6;
fib_sequence=zeros(1,n_fibb);
fib_sequence(1)=1;
fib_sequence(2)=1;
k=3;

%Turn code profiling on
profile on;

if (n_fibb~=1 && n_fibb~=2)
    
    while k <= n_fibb
        fib_sequence(k)=fib_sequence(k-2)+fib_sequence(k-1);
        k=k+1;
    end
    fprintf('The %ith Fibonacci number is %i', n_fibb, fib_sequence(k-1))

elseif (n_fibb == 1)
    fprintf('The %ist Fibonacci number is %i', n_fibb, fib_sequence(k-1))
elseif (n_fibb == 2)
    fprintf('The %ind Fibonacci number is %i', n_fibb, fib_sequence(k-1))
end

profile off;


%% Money problem 
%Use a while loop 
%Compound interest first before adding in a 10k dollar deposit 
%Calculating number of years before you're a millionaire 
