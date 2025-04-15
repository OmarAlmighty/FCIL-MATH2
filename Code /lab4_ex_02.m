setenv("PYTHON", "./venv/bin/python");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear;
pkg load symbolic;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
syms x;

f = sqrt(4*x + 1);

dx_dy = diff(f, x);
slope = subs(dx_dy, x, 6);
disp(slope);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f = (x^2)/(x+6);
dx_dy = diff(f, x);
slope = subs(dx_dy, x, 3);
disp(slope);
