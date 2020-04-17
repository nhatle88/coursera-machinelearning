function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
%J_history = zeros(num_iters, 1);

%for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
%J_history = zeors(1,1);
%prev_J_history = zeros(1,1);
iter = 1;
prev_J_history = 100;
J_history = 0;
delta_J = abs(prev_J_history - J_history);
while ( delta_J > 0.000001),
    theta_change = alpha*(1/m)*(transpose(X)*(X*theta - y));
    theta = theta - theta_change;
    %fprintf('%f %f \n', theta(1), theta(2));
    % ============================================================
    fprintf('%f %f %f %f \n', iter, theta(1), theta(2), delta_J);
    prev_J_history = J_history;
    % Save the cost J in every iteration    
    J_history = computeCost(X, y, theta);
    delta_J = abs(prev_J_history - J_history);
    iter = iter + 1;
 
end

end
