clear

%Vectorization
M = 10000;
N=10000;

A=rand(M,N);

tic;
A = sin(A);
toc;


%For Loop
A= rand(M,N);
tic;
for indx = 1:M
    for jndx = 1:N
        A(indx,jndx)= sin(A(indx,jndx));
    end
end
toc;


