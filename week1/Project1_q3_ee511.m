            % Akshay Deepak Hegde  USC ID: 8099460970  %
% -------------------------------------------------------------- %
% Project #1 - Coin flips, EE511: Spring 2017, Due: 19th Jan
% -------------------------------------------------------------- %
% Tossing a fair coin 100 times
% To generate a histogram of heads run lenghts
% -------------------------------------------------------------- %
clc;
clear;
close all;
% -------------------------------------------------------------- %
N = 100;%Total number of trials
P = rand(1,N);%Generate N random nubers in the range [0,1]

IteratorCurr=0;
Indexer=1;
HeadsRunArray=[];%Array to store heads run lenghts
% -------------------------------------------------------------- %
% Run the loop N times; considered as a head if the random number
% generated is >0.5, tails otherwise.
for i=1:N
  if (P(i)>0.5)
    % A head, increment the IteratorCurr(counter)
    IteratorCurr = IteratorCurr + 1;
  else
    % A tail, make a note of last head run lenght, only if the counter is
    % positive and then reset the counter for next run
    if (IteratorCurr > 0)
        HeadsRunArray(Indexer) = IteratorCurr;
        Indexer = Indexer + 1;
        IteratorCurr = 0;
    end
  end
end
% To keep the track of heads run lenght if the 100th(last) toss is head.
if (IteratorCurr > 0)
        HeadsRunArray(Indexer) = IteratorCurr;
        Indexer = Indexer + 1;
end
% ------------------------------------------------------------- %
% Plotting the results
histogram(HeadsRunArray);
title('Question 3');
xlabel('heads run lenghts');
ylabel('Count');
