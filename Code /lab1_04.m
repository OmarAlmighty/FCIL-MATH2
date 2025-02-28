clc;  % Clear the command window
clear;  % Clear the workspace variables

% Define the function f(x) that computes values based on the input x
function res = f(x)
    res = zeros(size(x));  % Initialize the result array to zeros, the same size as x

    % Define logical conditions for the two cases
    ind1 = x <= -1;  % Condition for x values less than or equal to -1
    ind2 = x > -1;   % Condition for x values greater than -1

    % Assign values to res based on the conditions
    res(ind1) = 1 - x(ind1);  % For x <= -1, calculate 1 - x
    res(ind2) = x(ind2) .^ 2;  % For x > -1, calculate x squared
endfunction

%% Alternative way to define the function using an anonymous function:
%% f = @(x) (x <= -1) .* (1 - x) + (x > -1) .* (x.^2);
%% This one-liner does the same as the function above. The `.*` operator
%% performs element-wise multiplication for the conditions and respective results.

% Create a vector of x values from -5 to 5 with 100 points
x = linspace(-5, 5, 100);

% Plot the function f(x) against x
plot(x, f(x));

% Set the plot axis so that the x and y axes intersect at the origin
set(gca, 'XAxisLocation', 'origin', 'YAxisLocation', 'origin');

