clc;
clear;

f = @(x) x.^5 + x;
g = @(x) 1 - x.^4;
h = @(x) 2*x - x.^2;


x = linspace(-10, 10);


% plot the even function in the first subplot
subplot(1, 3, 1);
plot(x, f(x));
set(gca, 'XAxisLocation', 'origin', 'YAxisLocation', 'origin');

%% plot the odd function in the second subplot
subplot(1, 3, 2);
plot(x, g(x));
set(gca, 'XAxisLocation', 'origin', 'YAxisLocation', 'origin');

%% plot the odd function in the second subplot
subplot(1, 3, 3);
plot(x, h(x));
set(gca, 'XAxisLocation', 'origin', 'YAxisLocation', 'origin');
