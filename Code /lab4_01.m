setenv("PYTHON", "./venv/bin/python");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear;
pkg load symbolic;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

syms x;
y = 3 / x; % Define the hyperbola equation

% Calculate the derivative
dy_dx = diff(y, x);

% Evaluate the derivative at x = 3
slope = double(subs(dy_dx, x, 3));

% Given point (3, 1)
x1 = 3;
y1 = 1;

% Equation of the tangent line: y - y1 = slope * (x - x1)
% Rearranged to y = slope * (x - x1) + y1
tangent_line = slope * (x - x1) + y1;

disp(tangent_line);

