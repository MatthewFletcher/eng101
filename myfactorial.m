function y = myfactorial(n);
%myfactorial computes n! using recursive techniques

 if n>1
     y=n*myfactorial(n-1);
 else
     y = 1;

 end
 

end