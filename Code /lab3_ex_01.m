clc;
clear;

% Given data points
t_values = [5, 10, 15, 20, 25, 30];
V_values = [694, 444, 250, 111, 28, 0];
t_P = 15;
V_P = 250;

%%%%%%% (a) %%%%%%%
% Compute secant slopes
secant_slopes = (V_values - V_P) ./ (t_values - t_P);

% Remove NaN (since P itself will give NaN)
secant_slopes = secant_slopes(~isnan(secant_slopes));

% Display secant slopes
disp('Secant slopes:')
disp(secant_slopes)

%%%%%%% (b) %%%%%%%
% Estimate tangent slope by averaging two closest secant slopes
tangent_slope = mean([secant_slopes(2), secant_slopes(3)]);
disp(['Estimated tangent slope: ', num2str(tangent_slope)])

%%%%%%% (c) %%%%%%%
% Define the tangent line equation: V = m*(t - t_P) + V_P
tangent_t = linspace(5, 30, 100);
tangent_V = tangent_slope * (tangent_t - t_P) + V_P;

% Plot the original data points
plot(t_values, V_values, 'bo-', 'LineWidth', 1.5, 'MarkerSize', 8, 'DisplayName', 'Water Volume Curve');

hold on;
% Plot the tangent line
plot(tangent_t, tangent_V, 'r--', 'LineWidth', 1.5, 'DisplayName', 'Tangent Line at t=15');

% Highlight the point P
plot(t_P, V_P, 'ks', 'MarkerSize', 10, 'MarkerFaceColor', 'k', 'DisplayName', 'Point P(15,250)');

% Labels and title
xlabel('Time (minutes)');
ylabel('Water Volume (Liters)');
title('Water Draining Curve and Tangent Line at P(15,250)');
legend('show');
grid on;
hold off;

