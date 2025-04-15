setenv("PYTHON", "./venv/bin/python");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear;
pkg load symbolic;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
syms x;

g = x^4 - 2;

dx_dg = diff(g, x);

slope = double(subs(dx_dg, x, 1));

x1 = 1;
y1 = -1;

tangent_line = slope * (x - x1) + y1;
disp(tangent_line);

