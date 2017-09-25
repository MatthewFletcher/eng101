%ENG101 practice



x=0:0.01:10*pi;
y=sin(x);
z=exp(-0.2*x);
subplot(3,1,1);
plot(x,y)
subplot(3,1,2);
plot(x,z)
subplot(3,1,3);
plot(x,y.*z)
