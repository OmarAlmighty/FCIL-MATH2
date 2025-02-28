clc;
clear;

f = @(x) x + sqrt(2-x);
g = @(u) u + sqrt(2-u);

x = linspace(-10, 10);

f_res = f(x);
g_res = g(x);

isequal(f_res, g_res)
