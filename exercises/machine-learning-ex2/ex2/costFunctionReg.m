function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

% Cost function for logistic regression with regularization:
% J(theta) = (1/m) * sum_i=1_to_m[ -yi*log(h_theta(xi)) - (1-yi)*log(1-h_theta(xi)) ]
%           + (lambda/2*m) * sum_j=i_to_n[ theta_j^2 ]
% Note: Parameter theta_0 (theta_1 in Octave/Matlab because of 1 based indexing)
% s     should NOT be regularized.

J = costFunction(theta, X, y) + ( lambda/(2*m) * theta(2:numel(theta))' * theta(2:numel(theta)) );

grad = (1/m * X'*(sigmoid(X * theta) - y)) + (lambda/m * [0; theta(2:numel(theta), 1)]);


% =============================================================

end
