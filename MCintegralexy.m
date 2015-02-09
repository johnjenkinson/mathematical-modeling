%For Problem 2.3
%By using the Monte Carlo method, the routine evaluates 
%\int_0^1\int_0^1exp(xy)dxdy 
%N = number of generated random triplets (x,y,z).
%The max value of z=e^{xy}>0 is e on [0,1]^2.
%The random triplets are generated uniformly on [0,1]X[0,1]X[0,e]
function I=MCintegralexy(N)
d=0; %the counter of the triplets below z=e^{xy} is initialized
for k=1:N
    P=rand(2,1); z=exp(1)*rand;
    if z<=exp(P(1)*P(2))
        d=d+1;
    end
end
I=d*exp(1)/N; %the ratio volume under the graph of e^{xy} to 
%volume of [0,1] is approximated by d/N.
%I=integral = volme under the graph of e^{xy}
end
