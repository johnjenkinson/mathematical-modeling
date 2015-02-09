%For problem 2.1
%MC to solve the integral \int_0^1 x^2 dx
%The max value of x^2 on [0,1] is 1. We generate random pairs uniformly in
%[0,1]\times [0,1] The value of the integral is approximated by the number
%of pairs falling bellow the graph of y=x^2 divided by the total number of
%pairs.
%N = number of randomly generated pairs.
function [I, epsilon]=MCintegralx2(N)
d=0; %initial number of pairs below the graph
for i=1:N
    P=rand(2,1);
    if P(1)^2>=P(2) 
        d=d+1; %if pair below the graph, count one
    end
end
I=d/N;
epsilon = abs(1/3-I); %the error after N trials
