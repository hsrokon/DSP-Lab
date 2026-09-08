%% Q3 solve

% Signal & Noise Generation 
N = 100;                        % Number of samples
clean_signal = 5*ones(1, N); % True flow rate = 5 m^3/s
noise = 0.2*randn(1, N);       % Gaussian noise
x=clean_signal + noise;  % Noisy input signal x(n)

a1 = 0.5;
b0 = 0.2;
b1 = 0.2;
b2 = 0.1;

b = [b0, b1, b2];  
a = [1, -a1];     

%Filter Execution
y = filter(b, a, x);

% MSE Calculation 
MSE = mean((clean_signal -y).^2);
fprintf('Mean Squared Error (MSE) = %f\n', MSE);

%plotting Results
n = 1:N;
figure;
plot(n, x, 'r--'); hold on;
plot(n, y, 'b-');
plot(n, clean_signal, 'k:');
grid on;

xlabel('Sample Index (n)');
ylabel('Water Flow Rate (m^3/s)');
title(['Filtered Water Flow Data (MSE = ', num2str(MSE), ')']);
legend('Noisy Input x(n)', 'Filtered Output y(n)', 'Ideal Signal (5 m^3/s)');