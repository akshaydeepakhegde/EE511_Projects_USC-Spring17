            % Akshay Deepak Hegde  USC ID: 8099460970  %
% -------------------------------------------------------------- %
% Project #2 - Samples and statistics, EE511: Spring 2017
% -------------------------------------------------------------- %
% To sample with replacements from the outcomes 0,1,..,M-1 where M=10
% To generate histogram of the outcomes
% To perform goodness-of-fit at 95% confident level to
% see the data fits in 0,1,..,9 and 1,2,..,10 uniform distributions
% -------------------------------------------------------------- %
clc;
clear;
close all;
% -------------------------------------------------------------- %
M=10;
N=10000;
y=datasample(0:M-1,N,'Replace',true);%sample with replacement of 0,1,..M-1
histogram(y)
title('Question 3');
xlabel('Outcomes');
ylabel('Counts');
% -------------------------------------------------------------- %
binranges=0:9;%to get the distribution from 0,1,..,9(part b)
y_Observed1=histc(y,binranges);%histc()to find the histogram counts
binranges=1:10;%to get the distribution from 1,2,..,10(part c)
y_Observed2=histc(y,binranges);%counts for observation 2(part c)

y_theoritical=N*(1/M).*ones(1,M);%expected set of counts

%chi2inv() to find the 95%confidence level with 9 degrees of freedom
ChiSquaredThreshold=chi2inv(0.95,9);
%to find chisquared test statistic values for both the observations 
ChiSquaredValue1=sum((y_Observed1-y_theoritical).^2./y_theoritical);
ChiSquaredValue2=sum((y_Observed2-y_theoritical).^2./y_theoritical);

% ---------------------------------------------------------------- %
% Display the results
% To verify the goodness-of-fit using chi2gof() function
% if h=1, the data set is a good fit of the distribution
h=chi2gof(y);

disp('Statistical goodness-of-fit test is performed')
if(ChiSquaredValue1>ChiSquaredThreshold)
    disp('The data does not fit sample from a uniform distribution 0,1,2,..,9')
else
    disp('The data fits sample from a uniform distribution 0,1,2,..,9')
end

if(ChiSquaredValue2>ChiSquaredThreshold)
    disp('The same data does not fit an alternate uniform distribution 1,2,3,..,10')
else
    disp('The same data fits an alternate uniform distribution 1,2,3,..,10')
end
