setenv("PYTHON", "./venv/bin/python");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear;
pkg load symbolic;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Define the function and its derivative
f = @(x) abs(x - 6);  % f(x) = |x - 6|

% f'(x) = -1 for x < 6, 1 for x > 6
f_prime = @(x) (x < 6) * (-1) + (x > 6) * (1);

% Generate x values
x_vals = linspace(0, 12, 1000);  % x values from 0 to 12

% Compute y values for f(x) and f'(x)
f_vals = f(x_vals);
f_prime_vals = arrayfun(f_prime, x_vals);

% Create the plots
subplot(2, 1, 1);
plot(x_vals, f_vals, 'LineWidth', 2);


subplot(2, 1, 2);
plot(x_vals, f_prime_vals, 'LineWidth', 2);


