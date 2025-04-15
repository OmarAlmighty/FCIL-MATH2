setenv("PYTHON", "./venv/bin/python");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear;
pkg load symbolic;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
syms x;
syms m;
syms b;

% Define the functions
f1 = 3*x - 8;
f2 = m*x + b;
f3 = 1/(x^2 - 4);
f4 = 1/(sqrt(1 + x));

% Compute the derivatives
d_f1 = diff(f1, x);
d_f2 = diff(f2, x);
d_f3 = diff(f3, x);
d_f4 = diff(f4, x);

% Display the results with clear labels
disp('Derivative of f1 = 3x - 8:');
disp(d_f1);
disp(' ');  % Add a blank line for separation

disp('Derivative of f2 = mx + b:');
disp(d_f2);
disp(' ');

disp('Derivative of f3 = 1/(x^2 - 4):');
disp(d_f3);
disp(' ');

disp('Derivative of f4 = 1/sqrt(1 + x):');
disp(d_f4);
disp(' ');

