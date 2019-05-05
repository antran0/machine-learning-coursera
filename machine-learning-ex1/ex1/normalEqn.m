function [theta] = normalEqn(X, y)
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQN(X,y) computes the closed-form solution to linear 
%   regression using the normal equations.

theta = zeros(size(X, 2), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the code to compute the closed form solution
%               to linear regression and put the result in theta.
%

% ---------------------- Sample Solution ----------------------


% Not sure if X' * X is invertable so pseudo inverse function pinv is used
% instead of inverse function inv.
theta = pinv(X' * X) * X' * y;


% -------------------------------------------------------------


% ============================================================

end
