clc;
content = fileread( 'faithful.dat.txt' ) ;
data = textscan( content, '%f %f %f%*[^\n]', ...
                        'HeaderLines', 3) ;
a = data{1};
b = data{2};
c = data{3};
f = (c(1:15));
 
 
SEM = std(c)/sqrt(length(c));               % Standard Error
ts = tinv([0.025  0.975],length(c)-1);      % T-Score
CI = mean(c) + ts*SEM;
disp('Statistical confidence interval');
disp(CI);
 
b = bootstrp(15, @mean, c) 
S = sort(b) 
disp('Bootstrap confidence interval');
CIlow=prctile(S,2.5) 
CIhigh=prctile(S,97.5)
 
b = bootstrp(272, @std, c) 
S = sort(b) 
CIlow=prctile(S,2.5) 
CIhigh=prctile(S,97.5)