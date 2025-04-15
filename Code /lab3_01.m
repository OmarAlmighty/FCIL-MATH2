%% Setting python venv %%
p = "./venv/bin/python";
setenv("PYTHON", p);
%%%%%%%%%%%%%%%%%%%%%%%%%
clc; clear;

pkg load symbolic

syms x

f = (x^2 - 1) / (x - 1);
limit_value = limit(f, x, 1);

disp(['Limit value: ', char(limit_value)])

x1 = 1;
y1 = 1;

line_eq = y1 + limit_value * (x-x1);
disp(['Line Equation (y): ', char(line_eq)])
