            % Akshay Deepak Hegde  USC ID: 8099460970  %
% -------------------------------------------------------------- %
% Project #1 - Coin flips, EE511: Spring 2017, Due: 19th Jan
% -------------------------------------------------------------- %
% Tossing a biased coin (p[HEAD=0.8]) 200 times
% To count number of heads
% To record longest run of heads
% To generate histogram for the Bernoulli outcomes
% -------------------------------------------------------------- %
clc;
clear;
close all;
% -------------------------------------------------------------- %
N=200;%Number of trials
RunOfHeads=0;
temp=[];

r=rand(1,200);%Generates random set of 200 samples between 0 and 1
p=0.2;%Biased coin case, P[TAIL]=0.2 as p[HEAD]=0.8
s=r>p;%Logically compared;Head if 1
% -------------------------------------------------------------- %
% Run the loop N times; keep track of the heads run lenght and 
% store it in an array(temp)
for i=1:N
    if (s(i))
        RunOfHeads=RunOfHeads+1;
        temp(i)=RunOfHeads;
    else
        RunOfHeads=0;
        temp(i)=RunOfHeads;
    end
end

NoOfHeads=sum(s);%Total number of heads
RunOfHeads=max(temp);%longest run of heads
% ------------------------------------------------------------- %
% Output display and plotting results
output1=['Number of Heads is ',num2str(NoOfHeads)];
disp(output1)
output2=['Longest run of Heads is ',num2str(RunOfHeads)];
disp(output2)
histogram(s);
title('Question 2');
xlabel('Outcome');
ylabel('Count');
