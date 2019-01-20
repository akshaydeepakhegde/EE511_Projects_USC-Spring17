alpha = 0.5;
beta = 0.75;
X = stblrnd(alpha,beta,1,0,1000,1);
ts = timeseries(X);
figure(1); plot(ts);
figure(2); yyaxis left
y=-50:50;
hist(X,y)
xlim([-30 30])
h=findobj(gca,'Type','patch'); h.FaceColor=[0.9 0.9 0.9];
p = stblpdf(y,alpha,beta,1,0);
yyaxis right
plot(y,p,'b');