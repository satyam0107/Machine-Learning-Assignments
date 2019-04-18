function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
h = X *theta;
%b = [ones(m,1) y];
sqerr = (h - y).^2;
rp = lambda * sum(theta.^2)/(2 * m) - (lambda * theta(1).^2/(2 * m));
  J = (1/(2*m) * sum(sqerr)) + rp;
  
%else
%    J = (1/(2*m) * sum(sqerr));
%end
grad(1) = sum((h-y).*X(:,1))/m;
for t = 2:size(theta)
      grad(t) = sum((h-y).*X(:,t))/m + (lambda * theta(t)/m);
end  

%t = [zeros(size(grad))];
%t(1) = 1/m * sum((h - y)'*X(:,1));

%t(2) = 1/m * sum((h - y)'*X(:,2)) + lambda/m * theta(2);
%grad = t;









% =========================================================================

grad = grad(:);

end
