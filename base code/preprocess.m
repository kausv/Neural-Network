function [train_data, train_label, validation_data, ...
    validation_label, test_data, test_label] = preprocess()
% preprocess function loads the original data set, performs some preprocess
%   tasks, and output the preprocessed train, validation and test data.

% Input:
% Although this function doesn't have any input, you are required to load
% the MNIST data set from file 'mnist_all.mat'.

% Output:
% train_data: matrix of training set. Each row of train_data contains 
%   feature vector of a image
% train_label: vector of label corresponding to each image in the training
%   set
% validation_data: matrix of training set. Each row of validation_data 
%   contains feature vector of a image
% validation_label: vector of label corresponding to each image in the 
%   training set
% test_data: matrix of testing set. Each row of test_data contains 
%   feature vector of a image
% test_label: vector of label corresponding to each image in the testing
%   set

% Some suggestions for preprocessing step:
% - divide the original data set to training, validation and testing set
%       with corresponding labels
% - convert original data set from integer to double by using double()
%       function
% - normalize the data to [0, 1]
% - feature selection
clear all
clc
load('mnist_all.mat');
all_data = [train0 zeros(size(train0,1),1);train1 ones(size(train1,1),1);train2 ones(size(train2,1),1)*2;
    train3 ones(size(train3,1),1)*3;train4 ones(size(train4,1),1)*4;train5 ones(size(train5,1),1)*5;
    train6 ones(size(train6,1),1)*6;train7 ones(size(train7,1),1)*7;train8 ones(size(train8,1),1)*8;train9 ones(size(train9,1),1)*9];

all_test_data = [test0 zeros(size(test0,1),1);test1 ones(size(test1,1),1);test2 ones(size(test2,1),1)*2;
    test3 ones(size(test3,1),1)*3;test4 ones(size(test4,1),1)*4;test5 ones(size(test5,1),1)*5;
    test6 ones(size(test6,1),1)*6;test7 ones(size(test7,1),1)*7;test8 ones(size(test8,1),1)*8;test9 ones(size(test9,1),1)*9];
all_test_data(:) = all_test_data(randperm(numel(all_test_data)));
test_data = double(all_test_data(:,1:784))/255;
test_label = all_test_data(:,785);

all_data(:) = all_data(randperm(numel(all_data)));
train_data = double(all_data(1:50000,1:784))/255;
train_label = all_data(1:50000,785);
validation_data = double(all_data(50001:60000,1:784))/255;
validation_label = all_data(50001:60000,785);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   YOUR CODE HERE %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


end

