%% Setting python venv %%
p = "./venv/bin/python";
setenv("PYTHON", p);
%%%%%%%%%%%%%%%%%%%%%%%%%
clc; clear;
pkg load symbolic

%%%%%%%%%%%%%%%%%%%%%%%%%
syms x

f = x * sqrt(20 - x^2)

limit_value = limit(f, x, 2);
res = subs(f, x, 2);

disp(["The limit value: ", char(limit_value)])
disp(["f(2): ", char(res)])

if (res == limit_value)
	disp("True")
else
	disp("False")
endif

disp("\n---------------------\n")
%%%%%%%%%%%%%%%%%%%%%%%%%

syms theta

f = sin(tan(cos(theta)))

limit_value = limit(f, theta, pi/2);
res = subs(f, theta, pi/2);

disp(["The limit value: ", char(limit_value)])
disp(["f(PI/2): ", char(res)])

if (res == limit_value)
	disp("True")
else
	disp("False")
endif


