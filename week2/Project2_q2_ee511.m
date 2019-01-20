            % Akshay Deepak Hegde  USC ID: 8099460970  %
% -------------------------------------------------------------- %
% Project #2 - Samples and statistics, EE511: Spring 2017
% -------------------------------------------------------------- %
% To produce a sequence X from std uniform random variable samples 
% To compute covariance of X>k and X>k+1 and comment if correlated
% To compute new sequence Y, Y[k]=X[k]-2X[k-1]+0.5X[k-2]-X[k-3]
% To compute covariance of X>k and Y>k and comment if correlated
% -------------------------------------------------------------- %
clc;
clear;
close all;
% -------------------------------------------------------------- %
% To find covariance of x>k and x>k+1 and to display
N=100;%Number of samples
X=rand(1,N);%Generate a sequence with N random variable samples
X1=[0 X];%zero padding at the start of sequence
X2=X1(1:N);%Get first N samples to get time shifted sequence of X

var=cov(X,X2);%covariance using cov() function
output1=['covariance of X>k and X>k+1 is ',num2str(var(1,2))];
disp(output1);
% -------------------------------------------------------------- %
% To find covariance of X and Y and to display.
for i=1:100
    
    a=i-1;%to find X[k-1]
    b=i-2;%to find X[k-2]
    c=i-3;%to find X[k-3]
    %to make X[k]=0 for k<=0
    if(a<=0),x=0;else x=X(i-1);end;    
    if(b<=0),y=0;else y=X(i-2);end;    
    if(c<=0),z=0;else z=X(i-3);end;
    
    Y(i)=X(i)-2*x+0.5*y-z;    
end
var1=cov(X,Y);
output2=['covariance of X and Y is ',num2str(var1(1,2))];
disp(output2);