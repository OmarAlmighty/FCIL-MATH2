clc;
clear;
setenv('PYTHON', './venv/bin/python3');
pkg load symbolic
###############################
x1 = 1; y1 = -3; x2 = 5; y2 = 7;
m = (y2 - y1) / (x2 - x1);
disp("Equation of the line:");
disp(["y = ", num2str(m), "x + ", num2str(y1 - m * x1)]);

###############################
x1 = -5; y1 = 10; x2 = 7; y2 = -10;
m = (y2 - y1) / (x2 - x1);
disp("Equation of the line:");
disp(["y = ", num2str(m), "x + ", num2str(y1 - m * x1)]);

###############################
syms x y;
eqn = x + (y - 1)^2 == 0;
y_sol = solve(eqn, y);
disp("Bottom half of the parabola:");
disp(["y = ", char(y_sol(2))]);

###############################
syms x y;
eqn = x^2 + (y - 2)^2 == 4;
y_sol = solve(eqn, y);
disp("Top half of the circle:");
disp(["y = ", char(y_sol(2))]);



