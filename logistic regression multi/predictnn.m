function p = predictnn(theta1 , theta2 , X)

p = zeros(size(X,1),1);
num_labels = size(theta2,1);
m = size(X,1);
X = [ones(m,1) X];

a1 = sigmoid(X * theta1');
a1 = [ones(m,1) a1];
a2 = sigmoid(a1 * theta2');

[temp,p] = max(a2 , [] , 2);

end