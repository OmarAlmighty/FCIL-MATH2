%% Setting python venv %%
p = "./venv/bin/python";
setenv("PYTHON", p);
%%%%%%%%%%%%%%%%%%%%%%%%%

clc;
clear;
pkg load symbolic

% Define function y = 1/(1-x)
syms x
y = 1/(1 - x);

% Given point P
x_P = 2;
y_P = subs(y, x, x_P);

% Given x values for secant slopes
x_values = [1.5, 1.9, 1.99, 1.999, 2.5, 2.1, 2.01, 2.001];

% Compute secant slopes
y_values = subs(y, x, x_values)
secant_slopes = double((y_values - y_P) ./ (x_values - x_P));

% Display results
disp('Secant slopes:')
disp(secant_slopes)

%% Estimate tangent slope using limit
%% diff(y, x) means the differentiation of y=1/(1-x) w.r.t x
%% then we compute the limit of the function as x =-> 2
tangent_slope = limit(diff(y, x), x, x_P);
disp('Estimated tangent slope: ')
disp(tangent_slope)

% Find the tangent line equation
syms y_tangent
y_tangent = y_P + tangent_slope * (x - x_P);
disp(['Tangent line equation: y = ', char(y_tangent)])

