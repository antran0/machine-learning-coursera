function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

%{
    For large positive values of x, the sigmoid should be close to 1,
    while for large negative values, the sigmoid should be close to 0.
    Evaluating sigmoid(0) should give you exactly 0.5. Your code should
    also work with vectors and matrices. For a matrix, your function should
    perform the sigmoid function on every element

    Sigmoid function: h_theta(x) = g(theta' * x)
    where g(z) = 1 / (1 + e^(-z))
%}

for row = 1:size(g, 1)
    for col = 1:size(g, 2)
        g(row, col) = 1 / (1 + exp(-1 * z(row, col)));
    end
end


% =============================================================

end
