function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

    m = length(y); % number of training examples
    J_history = zeros(num_iters, 1);

    for iter = 1:num_iters

        error = ((X*theta)-y);
        newX = error' * X;
        theta = theta - (  (alpha*(1/m)) *  newX'  );

        % Save the cost J in every iteration    
        J_history(iter) = costCalculation(X, y, theta);

    end

end