clear all ; close all ; clc
load ('ex3data1.mat');
m = size(X,1);

load('ex3weights.mat');

pred = predictnn(Theta1 , Theta2 ,X);

fprintf('\ntrain accuracy : %f\n' , mean(double(pred == y)) * 100);
