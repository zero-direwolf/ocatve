%reading data
data = load('ex1data1.txt');
X = data(:,1);
y = data(:,2);
m = length(y);

X = [ones(m,1) , data(:,1)];
theta = zeros(2,1);

cost(X,y,theta);

iteration = 1500
alpha = 0.01

theta = gradientDescent(X,y,theta,iteration,alpha)

predict1 = [1,3.5] * theta
predict2 = [1,7] * theta