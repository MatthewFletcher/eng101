%Pre allocating memory

N=100000
tic;
for indx = 1 :N
    a(indx)=0;
end

toc;



tic;
    b=zeros(1,N);
toc;