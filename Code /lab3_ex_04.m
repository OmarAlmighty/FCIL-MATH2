%% Setting python venv %%
p = "./venv/bin/python";
setenv("PYTHON", p);
%%%%%%%%%%%%%%%%%%%%%%%%%
clc; clear;

pkg load symbolic

%%%%%%%%%%%%%%%%%%%%%%%%%
syms theta

f = sin(3 * theta) / tan(2 * theta)
limit_value = limit(f, theta, 0);
disp(["Limit value: ", char(limit_value)])

disp("\n--------------\n")
%%%%%%%%%%%%%%%%%%%%%%%%%
syms x

f = x^x
limit_value = limit(f, x, 0, "right");
disp(["Limit value: ", char(limit_value)])
