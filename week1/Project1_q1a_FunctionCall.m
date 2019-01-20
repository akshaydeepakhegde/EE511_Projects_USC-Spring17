            % Akshay Deepak Hegde  USC ID: 8099460970  %
% -------------------------------------------------------------- %
% Project #1 - Coin flips, EE511: Spring 2017, Due: 19th Jan
% -------------------------------------------------------------- %

% Function definition of the function(Project1_q1a_FunctionCall)
% value is the arguement passed over the function
function fun=Project1_q1a_FunctionCall(value)
Times=value;
TotalHeadsArray =[];

for i=1:Times%To repeat the 50 flips 20,100,200,1000 times respectively
   
   r=rand(1,50);%Generate a set of 50 random numbers in the range [0,1]
   p=0.5;%Fair coin toss
   s=r>p;%A head if the number is >0.5, a tail otherwise.
   NoOfHeads=sum(s);%Number of heads in 50 flips
   
   TotalHeadsArray(i)=NoOfHeads;%Record head counts of each 50 flips in an array

end
% ---------------------------------------------------------- %
% Plotting data
TotalHeads=sum(TotalHeadsArray);
output=['Number of heads in 50*',num2str(Times),' flips is ',num2str(TotalHeads)];
disp(output)
figure
histogram(TotalHeadsArray);
xlabel('Outcome');
ylabel('Count');
title('Problem 1 (a)');

