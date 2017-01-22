function [all_theta] = oneVsall(X , y, num_labels ,lambda)

[m n] = size(X);
all_theta = zeros(num_labels,n+1);

X = [ones(m,1) X];

int_theta = zeros(n,1);

options = optimset('GradObj' , 'on' , 'MaxIter' , 50);

for k = 1:num_labels
    int_theta = all_theta(k,:)';
   [all_theta(k,:)] = fmincg(@(t)(lrcostFunction(t , X , (y == k) , lambda)),...
	 int_theta , options);
end

end