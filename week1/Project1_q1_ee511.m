            % Akshay Deepak Hegde  USC ID: 8099460970  %
% -------------------------------------------------------------- %
% Project #1 - Coin flips, EE511: Spring 2017, Due: 19th Jan
% -------------------------------------------------------------- %
% Tossing a fair coin (Bernoulli trial) 50 times
% To count number of heads
% To record longest run of heads
% To generate histogram for the Bernoulli outcomes
% -------------------------------------------------------------- %
clc;
clear;
close all;
% -------------------------------------------------------------- %
N=50;%Number of trials
RunOfHeads=0;
temp=[];

r=rand(1,50);%Generates random set of 50 samples between 0 and 1
p=0.5;%Fair coin case
s=r>p;%Logically compared;Head if 1
% -------------------------------------------------------------- %
% Run the loop N times; record the heads run lenght in an array(temp)
% A head if the number is >0.5, a tail otherwise.
for i=1:N
    if (s(i))
        RunOfHeads=RunOfHeads+1;
        temp(i)=RunOfHeads;
    else
        RunOfHeads=0;
        temp(i)=RunOfHeads;
    end
end

NoOfHeads=sum(s);%sum function to get the total number of heads
RunOfHeads=max(temp);%max function to get the longest head run
% ------------------------------------------------------------- %
% Output display and Plotting data
output1=['Number of Heads is ',num2str(NoOfHeads)];
disp(output1)
output2=['Longest run of Heads is ',num2str(RunOfHeads)];
disp(output2)
histogram(s);
title('Question 1');
xlabel('Outcome');
ylabel('Count');
