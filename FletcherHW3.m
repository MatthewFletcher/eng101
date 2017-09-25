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
%  Program:  ENG101 Homework 3, Problem 1                           %
% Due Date:  18 Sep 2017                                            %
%                                                                   %
% Language:  MatLab                                                 %
%      IDE:  MatLab R2017a                                          %
%                                                                   %
% Purpose:   Simulate die rolls                                     %
%                                                                   %
%                                                                   %
%                                                                   %
%   "Undocumented features": None.                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Important Note for grader    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%I wrote all 3 problems with a switch statement to help 
% prevent problems caused by multiple program's variables 
%To use each program, simply follow the instructions prompted at the
%beginning. 


clear;
clc;

%% Problem Selector
fprintf('Which problem would you like to try? \n')
fprintf('\t 1. Die Roll \n ')
fprintf('\t 2. Electrical current \n ')
fprintf('\t 3. Flying ball \n ')
choice=input('Enter your choice number here>>> ');
    %Switch statement
    switch(choice);    

        
        
        
%% Problem 1        
    %If 1 is selected, do problem 1
    case(1)    
        %%%%%%%%%%%%%%%%%
        %   Problem 1   %
        %%%%%%%%%%%%%%%%%

        %% Housekeeping
        clear;
        %% Computations

        %Cue user to input the number of trials they would like to try
        
        n_trials=input('How many trials? Larger number of trials suggested >>  ');



        %Generate random die rolls"
        die_roll=randi(6,[1,n_trials]);

        %Calculate the probability of rolling a 6
        prob_6=sum(die_roll==6)/n_trials;

        %% Output
        %Display the number of rolls:
        fprintf('Number of rolls: %d rolls. \n', n_trials)
        

        %Display the probability of getting a 6
        fprintf('Probability of a rolling a 6: %.5f percent. \n', prob_6*100)
        
        
        %Finds the positive difference between 1/6 and the calculated probability.
        perc_error=(100*abs(1/6-prob_6)/(1/6));
        
        %Calculate percent error from 1/6th chance
        fprintf('Percentage error from 1/6th chance is %.5f percent. \n',perc_error)
        

%% Problem 2
    %If 2 is selected, do problem 2
    case(2)
        %%%%%%%%%%%%%%
        % Problem 2  %
        %%%%%%%%%%%%%% 

        %% Housekeeping 
        clear;
        

        %% Setup 
        %Set time interval
        t_=0:0.001:10;
        % As a note, the variable was named t_ in order to prevent collisions 
        % with the third problem
        
        %Define function
        v_s=3*exp(-t_./3).*sin(pi./t_);
        
        %If a value in the vector is less than zero, set it equal to zero
        v_s(v_s<0)=0;

        %Plot graph
        plot(t_, v_s)
        
        %Add pretty stuff to graph
        xlabel('Time')
        ylabel('Voltage')
        grid on
        title('Voltage Across resistor WRT Time')

%% Problem 3
    case(3)
        %%%%%%%%%%%%%%
        %  Problem 3 %
        %%%%%%%%%%%%%%
        clear;
        
        %Set given variables 
        
        %Initial speed
        v_0=20; %meters per second
        
        %Initial angle
        theta=40; %degrees
        
        %Acceleration due to gravity
        g=9.8; %meters per second squared 
        
        %Time step
        dt=0.001;
        %Create time vector
        t=0:dt:3;
        
        
        %Create height vector
        h=v_0.*t*sind(theta)-(g.*t.^2)./2;
        
        %Create speed vector 
        v=sqrt(v_0^2-2*v_0*g.*t*sind(theta)+g^2.*t.^2);
        
        %Plot left axis of height and time
        yyaxis left
        plot(t,h)
        xlabel('Time (s)')
        ylabel('Height (m)')
        
        %Plot right axis of speed and time 
        yyaxis right
        plot(t,v)
        ylabel('Speed (m/s)')
        
        
        %Find all times when height is no less than 6 meters AND speed is less
        %than 16 meters per second 
        
        %Set all times that meet this condition to vector k
        k=find(h>=6 & v<=16);
        
        %Calculate time frame
        k=k.*dt;
        
        %Print Time frame 
        true_start=k(1);
        true_end=k(end);
        
        %Print out requested information. 
        fprintf('The ball satisfies the given conditions from %.2f seconds to %.2f seconds. \n', true_start, true_end)
               

        
        otherwise
            disp('BAD TA! yOu dIDnt FolLoW tHe rULeS') 
        %End switch statement    
    end