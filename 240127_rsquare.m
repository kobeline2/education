rng(123)
% make a test data and caluculate the r square
x = 5*randn(100,1);
y = 2*x + 7*randn(100, 1);


% fit the model
mdl = fitlm(x,y);

% plot the data
figure;
plot(x,y,'o');
hold on;
plot(x,mdl.Fitted,'r-');

% get the r square
r2 = mdl.Rsquared.Ordinary;

% plot r square in the figure
title(['R^2 = ' num2str(r2)]);


