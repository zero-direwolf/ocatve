clear all; close all; clc

load('ex3data1.mat');
input_layer_size = 400;
num_labels = 10;

m = size(X,1);
X = [ones(size(X,1),1) X];

theta = zeros(size(X,2),1);
lambda = 0.1;
%[all_theta] = oneVsall(X , y , num_labels , lambda);

%[cost grad] = lrcostFunction(theta, X , y , lambda);
%fprintf('cost is : %f\n' , cost);

[all_theta] = oneVsall(X , y , num_labels , lambda);

pred = predictOneVsall(all_theta,X);

fprintf('\n train set accracy : %f\n' , mean(double(pred == y)) * 100);
