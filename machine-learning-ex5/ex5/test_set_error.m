function [J] = test_set_error(X_poly_test, ytest,X_poly, y, X_poly_val, yval)

%test_set_error calculate by

% Selected values of lambda (you should not change this)
lambda_vec = [0 0.001 0.003 0.01 0.03 0.1 0.3 1 3 10]';

% You need to return these variables correctly.
error_train = zeros(length(lambda_vec), 1);
error_val = zeros(length(lambda_vec), 1);

lambda_vec, error_train, error_val = validationCurve(X_poly, y, X_poly_val, yval);
J = 0;
m = size(X_poly_test,1);
[_,num] = min(error_val);
lambda = lambda_vec(num);
theta = trainLinearReg(X_poly, y , lambda);

J = 1/(2*m)*sum((X_poly_test*theta-ytest).^2 );

end
