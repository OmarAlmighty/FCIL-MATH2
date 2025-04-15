setenv("PYTHON", "./venv/bin/python");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear;
pkg load symbolic;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
syms x;

f = x^2 - 8*x + 9

dx_dy = diff(f, x);

% Evaluate the derivative at x = 2
slope = double(subs(dx_dy, x, 2));

disp(slope);
