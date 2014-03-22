function label = nnPredict(w1, w2, data)
% nnPredict predicts the label of data given the parameter w1, w2 of Neural
% Network.

% Input:
% w1: matrix of weights of connections from input layer to hidden layers.
%     w1(i, j) represents the weight of connection from unit j in input 
%     layer to unit j in hidden layer.
% w2: matrix of weights of connections from hidden layer to output layers.
%     w2(i, j) represents the weight of connection from unit j in input 
%     layer to unit j in hidden layer.
% data: matrix of data. Each row of this matrix represents the feature 
%       vector of a particular image
       
% Output: 
% label: a column vector of predicted labels
display(w1);
display(w2);
data = [data ones(size(data,1),1)]';
z = 1./(1+exp(w1 * data));

label = (1./(1+exp(w2 * [z;ones(1,size(z,2))])))';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   YOUR CODE HERE %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


end
