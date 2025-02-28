%% Use this do clear the command window and to delete workspace.
%% This is useful to avoid unexpected results and output from old runs.
clc;
clear;

% Define a linear function f(x) = 2x - 1
f = @(x) 2*x - 1;

% Create a vector of x values ranging from -10 to 10
x = linspace(-10, 10);

% Plot the function f(x) over the range of x
p = plot(x, f(x));

% Move the X and Y axes to the origin (0, 0)
set(gca, 'XAxisLocation', 'origin', 'YAxisLocation', 'origin');
