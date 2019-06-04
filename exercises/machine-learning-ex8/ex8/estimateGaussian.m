function [mu sigma2] = estimateGaussian(X)
%ESTIMATEGAUSSIAN This function estimates the parameters of a 
%Gaussian distribution using the data in X
%   [mu sigma2] = estimateGaussian(X), 
%   The input X is the dataset with each n-dimensional data point in one row
%   The output is an n-dimensional vector mu, the mean of the data set
%   and the variances sigma^2, an n x 1 vector
% 

% Useful variables
[m, n] = size(X);

% You should return these values correctly
mu = zeros(n, 1);
sigma2 = zeros(n, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the mean of the data and the variances
%               In particular, mu(i) should contain the mean of
%               the data for the i-th feature and sigma2(i)
%               should contain variance of the i-th feature.
%

% Note:
%       The functions mean and var return row vectors. The (:) at the end
%       transforms the row vectors into column vectors.
%
%       For the function to the compute the variance, var(X, OPT, DIM):
%       The argument OPT determines the type of normalization to use.
%       Valid values are
%       0:
%           normalize with N-1, provides the best unbiased estimator of
%           the variance [default]
%
%       1:
%           normalizes with N, this provides the second moment around the
%           mean
mu      = mean(X)(:);
sigma2  = var(X, 1)(:);






% =============================================================


end
