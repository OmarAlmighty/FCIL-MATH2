clc;
clear;

%% Change this...
c = 2;

f = @(x) x.^3 - c * x.^2;

x = linspace(-20, 20);

plot(x, f(x));

set(gca, "XAxisLocation", "origin", "YAxisLocation", "origin");
