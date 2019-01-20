            % Akshay Deepak Hegde  USC ID: 8099460970  %
% -------------------------------------------------------------- %
% Project #1 - Coin flips, EE511: Spring 2017, Due: 19th Jan
% -------------------------------------------------------------- %
% Tossing a fair coin (Bernoulli trial) 50 times
% To count number of heads
% To record longest run of heads
% To generate histogram for the Bernoulli outcomes
% -------------------------------------------------------------- %

p = [6 6 6 6 6 15 13 14 15 13 0 0 0 0 0 0 0 0 0 0]/100; 
N = 10000;
for i = 1:N 
    k = 0;
    while 1, k = k + 1;
         %u=rand();
         j = 1 + floor(20*rand);% Get Uniform j
         if (3*rand) < p(j)/0.05  % Accept p(j) if U<p(j)/c, q(j)= 0.05
             X(i) = j; 
             C(i) = k;
             break
         end
    end
end
histogram(X);
Xmean = mean (X); 
Cmean=mean(C);
disp(Xmean);