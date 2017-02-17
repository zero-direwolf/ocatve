function theta = gradientDescent(X,y,theta,iteration,alpha)

 m = length(y)
 for iter = 1:iteration
 h = X  * theta;
 
 theta(1) = theta(1) - alpha/m * sum((h - y) .*X(:,1));
 theta(2) = theta(2) - alpha/m * sum((h - y) .*X(:,2));
 
 end
 end