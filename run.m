[SFeatureMatrix DFeatureMatrix] = getMatrix();
X = SFeatureMatrix(:,1:10);
Y = SFeatureMatrix(:,11);
x_train=X(1:3693,:);
y_train=Y(1:3693,:);
x_cv=X(3694:4924,:);
y_cv=Y(3694:4924,:);
x_test=X(4925:6156,:);
y_test=Y(4925:6156,:);
m = length(x_train);
%plot(x_train,y_train);
%xlabel('Features');
%ylabel('Corresponding BP');
%x_test = [ones(m, 1) x_test];

%calculating the cost function
theta = zeros(11, 1);
J = linearRegCostFunction([ones(m, 1) x_train], y_train, theta, 1);
% gradient descent for linear regression 
theta = zeros(11, 1);
[J, grad] = linearRegCostFunction([ones(m, 1) x_train], y_train, theta, 1);

%training of the regression algorithm

lambda = 0;
[theta] = trainLinearReg([ones(m, 1) x_train], y_train, lambda);
plot(x_train(:,1),y_train,'rx', 'MarkerSize', 10, 'LineWidth', 1.5);
hold on;
plot(x_train(:,1), x_train(:,1)*theta(1,:),'--', 'LineWidth', 2);
%axis([0 1 80 200]);
hold off;
figure;
plot(x_train(:,3),y_train,'rx', 'MarkerSize', 10, 'LineWidth', 1.5);
hold on;
plot(x_train(:,3), x_train(:,3)*theta(4,:),'--', 'LineWidth', 2);
hold off;

%X = [ones(m, 1) X];
%alpha = 0.01;
%num_iters = 1000;
%theta = zeros(11, 1);
%[theta, J_history] = gradientDescentMulti(X, Y, theta, alpha, num_iters);
%theta = pinv(X' * X) * X' * Y;