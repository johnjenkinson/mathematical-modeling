% Routine 1.1
p=1/3;                                      % one out of three show up
for n=60:80                               % start with 60 calls
    pk=(1-p)^n                           % this is p(0)
    sum=pk;                                % initialize the sum
    for k=1:19                              % compute p(k) and sum
        pk=(n-k+1)*p*pk/k/(1-p);    % p(k) from p(k-1)
        sum=sum+pk;                    % add in the kth contribution.
    end;
    E(n)=sum;                               % tabulate summations
end;
plot(E)
