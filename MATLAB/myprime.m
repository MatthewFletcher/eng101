function y=myprime(x)

divisor=2;

if(x==1)
    y=true;
else
    while (mod(x,divisor)~=0)
        divisor=divisor+1;
    end
    
    if (divisor~=x)
        y=false;
    else
        y=true;
    end

end
