 % Akshay Deepak Hegde  USC ID: 8099460970  %
% -------------------------------------------------------------- %
% Project #3-Samples and statistics , EE511: Spring 2017, Due: 7th Feb
% -------------------------------------------------------------- %
% To define a random variable N = min{n: ?i=1,..,n Xi>4}
% The smallest number of uniform random samples whose sum greater than 4
% To generate histograms using 100,1000,10000 samples for N.
% -------------------------------------------------------------- %
clc;
clear;
close all;
% -------------------------------------------------------------- %
n=10000;%number of samples
for i=1:n 
    sum=0;%initializations
    count=0;
    while(sum<=4)%loop is run untill collective sum exceeds 4
        count=count+1;
        u=rand();
        sum=sum+u;
    end
    Result(1,i)=count; %Record the result
end
% -------------------------------------------------------------- %
figure;
histogram(Result); 
title('Histogram for values of N'); 
xlabel('Values of N'); 
ylabel('Count of values of N'); 
Mean = mean(Result);  
Output=['The mean is ',num2str(Mean),' for ',num2str(n),' samples '];
disp(Output)
