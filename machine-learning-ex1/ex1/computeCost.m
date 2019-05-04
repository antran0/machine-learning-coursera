function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


% Non-vectorized cost
% J = 1 / (2 * m) * (sum(((X * theta) - y) .^ 2));

% Vectorized cost implementation
% Variable cost is a column vector that represents the difference between our
% prediction h(X) and the actual label value y before squaring for all training
% examples.
% J represents the overall squared loss of all input examples.
cost = X * theta - y;
J = 1 / (2 * m) * cost' * cost;


% =========================================================================

end
