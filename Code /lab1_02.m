%% Use this do clear the command window and to delete workspace.
%% This is useful to avoid unexpected results and output from old runs.
clc;
clear;

% Define a linear function g(x) = x^2
% .^ means element wise power, while ^ used for arrays.
g = @(x) x.^2;

% Create a vector of x values ranging from -10 to 10
x = linspace(-10, 10);

% Plot the function g(x) over the range of x
p = plot(x, g(x));

