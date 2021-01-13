function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%


aup_o = [ones(size(X,1),1),X];

Zup_t = aup_o*Theta1';

aup_t = sigmoid(Zup_t);

Aup_t = [ones(size(aup_t,1),1),aup_t];

Zup_thr = Aup_t*Theta2';

aup_thr_yhat = sigmoid(Zup_thr);

[prob , p] = max(aup_thr_yhat , [], 2);







% =========================================================================


end
