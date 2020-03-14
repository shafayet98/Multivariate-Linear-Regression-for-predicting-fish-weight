% loading data from csv
data = csvread("Fish.csv");


X_train = data(2:31,3:7);
y_train = data(2:31,2);
[m n] = size(X_train);


X_test = data(32:36,3:7);
y_test = data(32:36,2);

% feature normalization
[X_norm, mu, sigma] = normalizeData(X_train);
X_train = [ones(m,1) X_norm];

% plotting the data
plotData(X_train,y_train);


% compute cost and gradient dexcent to get minimized theta
alpha = 0.01;
iterations = 500;
theta = zeros(6, 1);
[theta, J_history] = gradientDescent(X_train, y_train, theta, alpha, iterations);
fprintf("Printing Theta: \n");
disp(theta);

% plotting the straight line
plotLine(X_train,y_train,theta);


% plot the decrease of value J
figure;
plot(1:numel(J_history), J_history, '-r', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');



for i = 1:length(X_test)
    temp = [ones(1,1) X_test(i,:)];
    temp(1,2) = (temp(1,2) - mu(1,1))/(sigma(1,1));
    temp(1,3) = (temp(1,3) - mu(1,2))/(sigma(1,2));
    temp(1,4) = (temp(1,4) - mu(1,3))/(sigma(1,3));
    temp(1,5) = (temp(1,5) - mu(1,4))/(sigma(1,4));
    temp(1,6) = (temp(1,6) - mu(1,5))/(sigma(1,5));
    predict(i) = temp * theta;
end

compare = [predict' y_test];
fprintf("Predicted on test dataset: \n");
disp(compare);