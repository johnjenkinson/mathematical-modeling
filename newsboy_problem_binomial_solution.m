% Routine 1.2
n=5000;                                     % number of passersby
p=100/n;                                    % probability of a sale
clear E;                                       % clear the variable E
for m=85:105                              % buy m papers
    pk=(1-p)^n                             % initialize p(0)
    e=-.5*m*pk                             % loss with no sales
    for k=1:m                                % sum profit for k <= m
        pk=(n-k+1)*p*pk/((1-p)*k);    % p(k) obtained from p(k-1)
        e=e+(0.75*k - 0.5*m)*pk;          % profit selling kth paper
    end;                                         % finish profit for k <= m
    for k=m+1:n                             % sum profit for k > m
        pk=(n-k+1)*p*pk/((1-p)*k);     % p(k) obtained from p(k-1)
        e=e+(0.25*m)*pk;                    % profit selling kth paper
    end;                                          % finish profit for k > m
    E(m)=e;                                     % profit from selling m papers
end;                                              % end experiment with m
plot(E)  
