clc;
clear;

% Define x values from -1.0 to +1.0 with small step size
x_values = -1.0 : 0.01 : 1.0;

% Compute sin(x)/x for each x
y_values = sin(x_values) ./ x_values;

% Display the last computed value (approaching x -> 0)
% Get the middle value of the y_values (which is approaching 0)
disp(['Approximate limit as x -> 0: ', num2str(y_values(ceil(end/2)))]);

% Plot the function to visualize the limit

plot(x_values, y_values, 'b-', 'LineWidth', 2);

hold on;

% Expected limit value at x=0
plot(0, 1, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');

xlabel('x');
ylabel('sin(x)/x');
title('Approximating lim (x->0) sin(x)/x');

grid on;
hold off;

set(gca, "XAxisLocation", "origin", "YAxisLocation", "origin");
