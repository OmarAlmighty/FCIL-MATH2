%% Setting python venv %%
setenv("PYTHON", "./venv/bin/python");
%%%%%%%%%%%%%%%%%%%%%%%%%
clc; clear;

pkg load symbolic

syms x y

g = 2 + sqrt(x+1)
%% This part represents the equation f(𝑥)= y, but we rearrange it as f(x)−y=0.
%% In other words, we are trying to find the value of x such that f(x) equals y.
%% Thus, we are solving x^2 + 2x - y = 0
inv_g = solve(g - y, x)

val = subs(g, 3)
% val = 4
inv_val = subs(inv_g, val)

%%%%%%%%%%%%%
h = (6-3*x)/(5*x+7)
inv_h = solve(h - y, x)
val = subs(h, 2)
%val = 0
inv_val = subs(inv_h, val)
