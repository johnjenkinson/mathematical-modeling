%n=number of trials
% N=number of steps
%ER2=estimate for the expectation of the square distance from the origin
%Er=estimate for the expectation of the distance from the origin
function [ ER2, ER ] = drunkrndwalk( N,n )
%A drunkard walks randomly in the plane taking each step in a random 
%direction \theta \in  [0,2\pi]. 
%The function returns the estimates for the expectations of the distance
%and square distance.
d2=0; %square of the distance from the origin to the current position
d=0; %the distance from the origin to the current position
for k=1:n
    x=0; y=0;
for i=1:N
    theta=2*pi*rand;
    x=x+cos(theta);
    y=y+sin(theta);
end
d2=d2+x^2+y^2;
d=d+sqrt(x^2+y^2);
end
ER2=d2/n;
ER=d/n;
end
