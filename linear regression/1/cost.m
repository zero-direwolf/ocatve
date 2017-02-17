function J = cost(X,y,theta)

m = length(y);
J = 0;
htheta = X*theta;
J = 1/(2*m)*sum((htheta - y) .^2);

end