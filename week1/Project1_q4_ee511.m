            % Akshay Deepak Hegde  USC ID: 8099460970  %
% -------------------------------------------------------------- %
% Project #1 - Coin flips, EE511: Spring 2017, Due: 19th Jan
% -------------------------------------------------------------- 
% Tossing a fair coin
% To count number of tosses untill until reaching a user specified 
% positive number of heads
% -------------------------------------------------------------- %
clc;
clear;
close all;
% -------------------------------------------------------------- %
% Initialization and input the number of heads
In=input('number of heads : ');
NoOfTosses=0;
NoOfHeads=0;
% -------------------------------------------------------------- %
% Generate a random number in the range [0,1] with fair 50% probability
% Run the loop until count of heads is user specified positive number
% Increment the heads count if the number is >0.5
while(NoOfHeads~=In)
if(rand()>0.5)
    NoOfHeads=NoOfHeads+1;
end
NoOfTosses=NoOfTosses+1;
end
% -------------------------------------------------------------- %
% Display the output
Output=['Total number of tosses untill reaching ',num2str(In), ' heads is ',num2str(NoOfTosses)];
disp(Output)
