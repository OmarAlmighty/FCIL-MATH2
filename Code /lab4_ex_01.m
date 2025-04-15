setenv("PYTHON", "./venv/bin/python");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear;
pkg load symbolic;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
syms x;

y = 2*x^2 - 5*x + 1;

dx_dy = diff(y, x);
slope = double(subs(dx_dy, x, 3));

% Given point (3, 4)
x1 = 3;
y1 = 4;

tangent_line = slope * (x - x1) + y1;

disp(tangent_line);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
y = x^2 - 2 * x^3;

dx_dy = diff(y, x);
slope = double(subs(dx_dy, x, 1));

% Given point (1, -1)
x1 = 1;
y1 = -1;

tangent_line = slope * (x - x1) + y1;

disp(tangent_line);

