function [J grad] = lrcostFunction(theta , X , y ,lambda)

m = length(y);
%theta = zeros(size(X,2),1);
%X = [ones(size(X,1),1)) X];
J =0;
grad = zeros(size(theta,1));

htheta = sigmoid(X * theta);
J = 1 / m * sum(- y .* log(htheta) - (1 - y) .* log(1 - htheta)) + ...
lambda / (2 * m) * sum(theta(2 : end) .^ 2);
temp = theta;
temp(1) = 0;
grad = ((X' * (htheta - y)) + lambda * temp) ./ m;
grad = grad(:);

end