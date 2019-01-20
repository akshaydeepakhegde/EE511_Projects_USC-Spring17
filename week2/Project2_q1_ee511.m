            % Akshay Deepak Hegde  USC ID: 8099460970  %
% -------------------------------------------------------------- %
% Project #2 - Samples and statistics, EE511: Spring 2017
% -------------------------------------------------------------- %
% To simulate sampling uniformly on the interval [-3,2]
% To generate histogram of the outcomes
% To compute sample mean and variance and to compare with theoritical.
% To compute bootstrap confidence interval for sample mean and sample
% standard deviation.
% -------------------------------------------------------------- %
clc;
clear;
close all;
% -------------------------------------------------------------- %
N=10000;%Number of samples
r=rand(1,N);%Generates N samples in the range [0 1]
a=-3;
b=2;
X=a+(b-a).*r;%sampling in the interval [-3 2]

histogram(X);
title('Question 1');
xlabel('Outcomes');
ylabel('Counts');
% --------------------------------------------------------------- %
% Calculate sample mean and variance and to display the outputs
Mean=mean(X);
Var=var(X);

Output1=['sample mean of the samples is ',num2str(Mean)];
disp(Output1)
Output2=['sample variance of the samples is ',num2str(Var)];
disp(Output2)
% --------------------------------------------------------------- %
% To compute bootstrap confidence interval and to display

for i=1:1000%To resample the data 1000 times
    resample=datasample(X,N);
    meani(i)=mean(resample);%To store the means of each resampled set
    stdi(i)=std(resample);%Standard deviations of each resampled set.
    
end

means=sort(meani);%using sort() function,sort the means
stds=sort(stdi);%using sort() function,sort the std deviations

output1=['bootstrap confidence interval for sample mean is ['...
    ,num2str(means(25)),' ',num2str(means(975)),']' ];
disp(output1)
output2=['bootstrap confidence interval for sample std deviations is ['...
    ,num2str(stds(25)),' ',num2str(stds(975)),']' ];
disp(output2)
