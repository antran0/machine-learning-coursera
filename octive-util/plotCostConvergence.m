function theta_results = plotCostConvergence(data_file, fgradientdescent, num_iters = 400, alphas = [0.3 0.1 0.03 0.01])
    %{
        'k' : blacK
        'r' : Red
        'g' : green
        'b' : Blue
        'y' : Yellow
        'm' : Magenta
        'c' : Cyan
        'w' : White
    %}
    colors      = 'krgbymcw';
    
    data = load(data_file);
    num_examples = rows(data);
    num_features = columns(data) - 1;
    
    X = data(:, 1:columns(data) - 1);
    y = data(:, columns(data));

    [X mu sigma] = featureNormalize(X);
    X = [ones(num_examples, 1), X];

    %{
        Save theta obtained by running gradient descent with some learning rate alpha.
        Each row represents theta transposed appended with the learning rate used to
        obtain it.
            | theta1', alphas(1) |
            | theta2', alphas(2) |
            | ...      ...       |
            | numel(alphas)      |
    %}
    theta_results = [zeros(numel(alphas), num_features + 1) alphas'];

    figure;
    hold on;
    for i = 1:numel(alphas)
        theta = zeros(columns(data), 1);    % initial guess for theta
        alpha = alphas(i);                  % current learning rate to run gradient descent with
        [theta J_history] = fgradientdescent(X, y, theta, alpha, num_iters);
        theta_results(i, 1:columns(theta_results) - 1) = theta';

        linestyle   = '-';
        color       = colors(i);
        displayname = strcat(';alpha: ', num2str(alpha), ';');
        fmt         = strcat(linestyle, color, displayname);
        plot(1:numel(J_history), J_history, fmt,
            'LineWidth', 2);
    end

    set(title('Gradient Descent Convergence'), 'fontsize', 20);
    xlabel('Number of iterations');
    ylabel('Cost');
end