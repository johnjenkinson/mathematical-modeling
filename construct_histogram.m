% homework problem 1.15
figure;
x=-4:0.1:4;
y=normrnd(0,1,1000,1);
H=hist(y,x);
H=H/sum(H);
bar(x,H); hold on
g=1/sqrt(2*pi)*exp(-0.5*x.^2);
g=g/sum(g);
plot(x,g,'r');
