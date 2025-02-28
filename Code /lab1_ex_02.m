clc;   % Clears the command window, useful for a clean output display.
clear; % Clears all variables from the workspace to prevent conflicts with previous runs.

% Function definition for 'f', which takes input 'x'.
function res = f(x)
    % Condition to find where the elements of x are less than 0.
    ind1 = x < 0;
    % Condition to find where the elements of x are greater than or equal to 0.
    ind2 = x >= 0;

    % For the elements of x where x < 0, assign the result as x^2 + 2.
    res(ind1) = x(ind1) .^ 2 + 2;

    % For the elements of x where x >= 0, assign the result as x (i.e., no change).
    res(ind2) = x(ind2);
endfunction  % End of function 'f'

% Define an anonymous function 'g' which takes 'x' as input.
% For values of x less than 2, it returns 5. For values of x greater than or equal to 2, it returns 1/2 * x - 3.
g = @(x) (x<2) .* 5 + (x>=2) .* (1/2 .* x - 3);

% Test the function 'f' with three different values of x (-3, 0, and 2)
f(-3); % Call the function with x = -3
f(0);  % Call the function with x = 0
f(2);  % Call the function with x = 2

% Print a separator line for clarity in output display.
disp("----------");

% Test the function 'g' with three different values of x (-3, 0, and 2)
disp(g(-3));  % Call the function with x = -3 and display the result.
disp(g(0));   % Call the function with x = 0 and display the result.
disp(g(2));   % Call the function with x = 2 and display the result.

