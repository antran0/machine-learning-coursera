function [error_train_avg error_val_avg] = ...
    averageError(X, y, Xval, yval, lambda, n_sample, n_iter)

mtest   = size(X,1);
ntest   = size(X,2);

mval    = size(Xval,1);
nval    = size(Xval,2);

error_train_avg = zeros(n_sample, 1);
error_val_avg   = zeros(n_sample, 1);

for i = 1:n_iter
    random_indices = randperm(n_sample);

    X_sample    = X(random_indices, :);
    y_sample    = y(random_indices);
    Xval_sample = Xval(random_indices, :);
    yval_sample = yval(random_indices);

    theta_train = trainLinearReg(X_sample, y_sample, lambda);
    error_train_avg()
end

end
