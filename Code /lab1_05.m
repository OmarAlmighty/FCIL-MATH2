clc;
clear;

%% create an even function that is x^2
f_even = @(x) x.^2
%% create an odd function that is x^3
f_odd = @(x) x.^3

%% create the x values [-10, 10]
x = linspace(-10, 10);

% plot the even function in the first subplot
subplot(1, 2, 1);
plot(x, f_even(x));
% Set the plot axis so that the x and y axes intersect at the origin
set(gca, 'XAxisLocation', 'origin', 'YAxisLocation', 'origin');

%% plot the odd funciton in the second subplot
subplot(1, 2, 2);
plot(x, f_odd(x));
% Set the plot axis so that the x and y axes intersect at the origin
set(gca, 'XAxisLocation', 'origin', 'YAxisLocation', 'origin');
