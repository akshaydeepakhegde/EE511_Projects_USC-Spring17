clc;
clear all;
close all;
In=input('Enter the location of A1 allele');% User input
input=zeros(1,201); % Initial distribution
input(In)=1;      
N = 100;            % Number of individuals
 
% transition matrix
Mat=zeros(2*N+1,2*N+1); 
for i = 1:2*N+1
    for j = 1:2*N+1
        Mat(i,j) = nchoosek(2*N,j-1)*((i-1)/(2*N))^(j-1)*(1-(i-1)/(2*N))^(2*N-j+1);
    end    
end
 
n=1000;                  % Number of time steps to take
output=zeros(n+1,2*N+1); % Clear out any old values
t=0:n;                   % Time indices
 
output(1,:)=input; % To get first output value
 
for i=1:n,
    output(i+1,:) = output(i,:)*Mat;
    LIT =(output(i+1,:)- output(i,:)); % Threshhold calculation
    if all(LIT == 1)     
        break;
    end
end
plot(t,output);
xlabel('Time axis');
ylabel('Probability of a particular state')
title('Genetic population composition')
