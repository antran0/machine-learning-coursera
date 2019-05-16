function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

% Potential values of C and sigma
CANDIDATES              = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];

% Minimum cross validation prediction error of models trained with some
% values of C and sigma
min_prediction_err      = inf;

% Iterate through all candidate values of C
for C_i = CANDIDATES
    % Iterate through all candidate values of sigma
    for sigma_j = CANDIDATES
        fprintf("Training with parameters [C, sigma] = [%d, %d]\n", ...
                C_i, sigma_j);

        % Train our model over the training set using the current values of
        % C and sigma
        model = svmTrain(X, y, C_i, ...
                        @(x1,x2) gaussianKernel(x1,x2,sigma_j));

        % Use our trained model to obtain predictions in the cross validation set
        % and compute the error
        predictions = svmPredict(model, Xval);
        error_ij    = mean(double(predictions ~= yval));

        fprintf("Prediction error: %d\n", error_ij);

        % Update the minimum cross validation error and the values of C and sigma
        % used to obtain that error value
        if error_ij < min_prediction_err
            min_prediction_err = error_ij;
            C = C_i;
            sigma = sigma_j;
        endif
    end
end

% Optimal values of [C, sigma] for data set 3:
%   C = 0.1, sigma = 0.1

% =========================================================================

end
