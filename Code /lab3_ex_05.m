%% Setting python venv %%
p = "./venv/bin/python";
setenv("PYTHON", p);
%%%%%%%%%%%%%%%%%%%%%%%%%
clc; clear;
pkg load symbolic

%%%%%%%%%%%%%%%%%%%%%%%%%
syms x

f = 3 * x^2 + (x+2)^5
limit_value = limit(f, x, -1);
res = subs(f, x, -1);
disp(["The limit value: ", char(limit_value)])
disp(["f(-1): ", char(res)])

if (res == limit_value)
	disp("True")
else
	disp("False")
endif
disp("\n---------------------\n")
%%%%%%%%%%%%%%%%%%%%%%%%%
syms t

f = (t^2 + 5*t) / (2*t + 1)
limit_value = limit(f, t, 2);
res = subs(f, t, 2);
disp(["The limit value: ", char(limit_value)])
disp(["f(2): ", char(res)])

if (res == limit_value)
	disp("True")
else
	disp("False")
endif



