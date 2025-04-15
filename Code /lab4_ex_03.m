setenv("PYTHON", "./venv/bin/python");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear;
pkg load symbolic;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
syms x;

f = 3 * x^2 - x^3;

dx_dy = diff(f, x);

slope = double(subs(dx_dy, x, 1));

x1 = 1;
y1 = 2;

tangent_line = slope * (x - x1) + y1;
disp(tangent_line);

