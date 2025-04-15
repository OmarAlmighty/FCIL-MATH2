%% Setting python venv %%
p = "./venv/bin/python";
setenv("PYTHON", p);
%%%%%%%%%%%%%%%%%%%%%%%%%

clc;
clear;

pkg load symbolic

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
syms x

f = (x^2 - 3 * x) / (x^2 - 9)
limit_value = limit(f, x, 3);
disp("The limit value: ")
disp(limit_value)

disp("--------------")
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
syms h
f = ((2 + h)^5 - 32) / h
limit_value = limit(f, h, 0);
disp("The limit value:")
disp(limit_value)
