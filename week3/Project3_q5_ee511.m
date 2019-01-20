            % Akshay Deepak Hegde  USC ID: 8099460970  %
% -------------------------------------------------------------- %
% Project #3-Samples and statistics , EE511: Spring 2017, Due: 7th Feb
% -------------------------------------------------------------- %
% To use accept-reject method for sampling
% To generate histograms and overlay target distribution.
% To calculate sample mean, variance and effeciency
% -------------------------------------------------------------- %
clc;
clear;
close all;
% -------------------------------------------------------------- %
p = [6 6 6 6 6 15 13 14 15 13 0 0 0 0 0 0 0 0 0 0]/100;%initializations
q = [5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5]/100;
N=10000;
for i = 1:N
    k = 0;
    while 1,k = k + 1; % while true, run the loop
        j = 1 + floor(20*rand);  % Get Uniform j
        U = rand();
        if ((3*U) <= p(j)/0.05 ) % Accept p(j) if U<p(j)/c, q(j)= 0.05
            X(i) = j; % recoed the results
            C(i) = k; % count array
            break; 
        end
    end
end
% ---------------------------------------------------------- %
% Display the results
figure; 
histogram(X); 
hold on; 
plot(p*N); 
ylabel('Count of occurance of random variables');
xlabel('Random variables');
legend('Histogram of Accept-Reject sampling','Distribution of p');
meanX = mean(X);
varX = var(X); 
meanC = mean(C); 
Output1=['Experimental mean is ',num2str(meanX)];
disp(Output1)
Output2=['Experimental variance is ',num2str(varX)];
disp(Output2)
Output3=['Mean of count array is ',num2str(meanC)];
disp(Output3)
eff = N/sum(C);
Output4=['Experimental effeciency is ',num2str(eff)];
disp(Output4)
eff2=1/3;
Output5=['Theorectical Efficiency (1/c): ',num2str(eff2)];
disp(Output5)

