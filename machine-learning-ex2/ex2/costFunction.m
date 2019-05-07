function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

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
%
% Note: grad should have the same dimensions as theta
%

% Cost function for logistic regression:
%   J(theta) = (1/m) * sum_i=1_to_m[ -yi*log(h_theta(xi)) - (1-yi)*log(1-h_theta(xi)) ]
%
% Gradient of the cost is a vector of same length as theta with the jth element as follows:
% dJ(theta)/dtheta_j = (1 / m) * sum_i=1_to_m[ (h_theta(xi) - yi)) * xi_j ]

predictions = sigmoid(X * theta);

costSum = -1 * y' * log(predictions) - ((1 - y)' * log(1 - predictions));
J = 1/m * costSum;

grad = 1/m * X'*(predictions - y);




% =============================================================

end
