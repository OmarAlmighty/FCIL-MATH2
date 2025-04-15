setenv("PYTHON", "./venv/bin/python");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear;
clf;
pkg load symbolic;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
syms x;

f = abs(x);

dev_x = diff(f, x);

x_vals = linspace(-2, 2);

f_x = double(subs(f, x, x_vals));
dev_f_x = double(subs(dev_x, x, x_vals));

subplot(1, 1, 1);
plot(x_vals, f_x);

subplot(1, 2, 2);
plot(x_vals, dev_f_x);
