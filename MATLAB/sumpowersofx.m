%Summing of x^n

%First approach 
x=0.2;
N=1000000;
soltnOne=0;

tic;
 for idx = 0:N
     soltnOne=soltnOne + x^idx;
 end
 toc;
 
 %Second approach
 tic;
    soltnTwo = sum(x.^(0:N));
 toc;
 
 
 tic;
 soltnThree = 1/(1-x);
 toc;