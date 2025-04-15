setenv("PYTHON", "./venv/bin/python");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear;
clf;
pkg load symbolic;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
syms x;

f = x^3 - x;

dev_f = diff(f, x);

x_vals = linspace(-2, 2, 100);

% Substitiute the valeue of x
% Convert symbolic expression to numeric
f_x = double(subs(f, x, x_vals));
dev_f_x = double(subs(dev_f, x, x_vals));

% Create a 2-row subplot
subplot(2, 1, 1);
plot(x_vals, f_x);
title('Function: f(x) = x^3 - x');
xlabel('x');
ylabel('f(x)');

subplot(2, 1, 2);
plot(x_vals, dev_f_x);
title('Derivative: f''(x) = 3x^2 - 1');
xlabel('x');
ylabel('f''(x)');
