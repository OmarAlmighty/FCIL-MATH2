% Clear the command window and the workspace
clc;
clear;

% Define three functions:
% f1(x) = x^2 - 2 (a parabola)
% f2(x) = sqrt(x + 2) (upper half of a sideways parabola)
% f3(x) = -sqrt(x - 2) (lower half of a sideways parabola)
f1 = @(x) x.^2 - 2;
f2 = @(x) sqrt(x + 2);
f3 = @(x) -sqrt(x - 2);

% Create a vector of x values ranging from -20 to 20
x = linspace(-20, 20);

% Create a subplot with 1 row and 3 columns,
% and plot the first function in the first subplot
subplot(1, 3, 1);
plot(f1(x), x);
set(gca, 'XAxisLocation', 'origin', 'YAxisLocation', 'origin');

% Plot the second function in the second subplot
subplot(1, 3, 2);
plot(f2(x), x);
set(gca, 'XAxisLocation', 'origin', 'YAxisLocation', 'origin');

% Plot the third function in the third subplot
subplot(1, 3, 3);
plot(f3(x), x);
set(gca, 'XAxisLocation', 'origin', 'YAxisLocation', 'origin');
