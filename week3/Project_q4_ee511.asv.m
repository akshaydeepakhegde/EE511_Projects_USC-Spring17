            % Akshay Deepak Hegde  USC ID: 8099460970  %
% -------------------------------------------------------------- %
% Project #3-Samples and statistics , EE511: Spring 2017, Due: 7th Feb
% -------------------------------------------------------------- %
% To produce a sequence with given condtion
% To generate histograms
% to define r.v and estimate mean and variance
% -------------------------------------------------------------- %
clc;
clear;
close all;
% -------------------------------------------------------------- %
sample = zeros(1,[]);

for j = 1:60
sample = [sample,1/j];
end
s = sum(sample);
p = 1/s;

for j = 1:60
P(j) = p/j;
end
X = Nj(n,P);
% --------------------------------------------------%
histogram(X,60);
title('Histogram '); 
ylabel('Frequency of occurence'); 
xlabel('Value of sample');

N60 = find( X == 60,1);
for j = 1:N
X = Nj(n,P);
N60 = [N60 find(X==60,1)];
end

mean = sum(N60)/N;
variance = sum((N60-mean).^2)/1000;
disp(mean); disp(variance); end

function X = Nj(n,P) 
X = zeros(1,n);
for i = 1:n
    U = rand();
    index = find(U < cumsum(P));
    X(i) = min(index);
end 