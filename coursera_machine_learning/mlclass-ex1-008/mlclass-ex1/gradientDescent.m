function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    % fprintf('iter %d cost %f t0 %f t1 %f\n', iter, computeCost(X, y, theta), theta(1), theta(2));

	% ttlH is a vector containing all the results of h
	ttlH = ((X * theta) - y)';

	temp0 = theta(1) - alpha * ttlH * (1 / m) * X(:, 1);
	temp1 = theta(2) - alpha * ttlH * (1 / m) * X(:, 2);

	theta(1) = temp0;
	theta(2) = temp1;
	

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end


% fprintf('Running Gradient Descent ...\n')
%
% data = load('ex1data1.txt');
% X = data(:, 1); y = data(:, 2);
% m = length(y); % number of training examples
%
%
% X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
% theta = zeros(2, 1); % initialize fitting parameters
%
% % Some gradient descent settings
% iterations = 100;
% alpha = 0.01;
%
% % compute and display initial cost
% computeCost(X, y, theta);
%
% % run gradient descent
% theta = gradientDescent(X, y, theta, alpha, iterations);
%
% % print theta to screen
% fprintf('Theta found by gradient descent: ');
% fprintf('%f %f \n', theta(1), theta(2));
%
% % Plot the linear fit
% hold on; % keep previous plot visible
% plot(X(:,2), X*theta, '-')
% legend('Training data', 'Linear regression')
% hold off % don't overlay any more plots on this figure
%
% % Predict values for population sizes of 35,000 and 70,000
% predict1 = [1, 3.5] *theta;
% fprintf('For population = 35,000, we predict a profit of %f\n',...
%     predict1*10000);
% predict2 = [1, 7] * theta;
% fprintf('For population = 70,000, we predict a profit of %f\n',...
%     predict2*10000);
%
%
