%Routine 2/5
N=5000;             %number of passersby per day
p=100/N;            %prob. each is a customer
d=365;                %experiment for a year
papers=90:105;    %try buying 90 to 105 papers
prof=90:105;        %size the profit vector and
prof=0*prof;        %initizlie to 0.
sold=prof;              %size the # sold vector
%begin the experiment
for i=1:d               %loop through the year
    sold=0*sold;      %none sold at start of the day
    for k=1:N           %people begin walking
        if rand <=p     %if he/she is a customer
            sold=sold+(sold<=papers); %sell a paper if any are left
        end;            %endif
    end;                %day ends
    prof=prof+.75*sold-0.5*papers; %add in day's profit
end;                    %end year
prof=prof/d;        %average daily profit
plot(papers, prof)  %plot average daily profit
