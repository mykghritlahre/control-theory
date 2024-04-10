numerator = 27.9*3.01*[0.1 1];
denominator = conv([1 0], conv([1 3], conv([1 7],[0.0301 1])));

% Create the transfer function G(s)
G = tf(numerator, denominator);

% Create a unity feedback system
H = 1;  % Unity feedback

% Create the closed-loop transfer function T(s) = G(s) / (1 + G(s)H(s))
T = feedback(G, H);

% Time vector for the step response plot
t = 0:0.01:30;  % Adjust the time vector as needed

% Compute the step response of the closed-loop system
[y, time] = step(T, t);

% Plot the step response

figure;
plot(time, y);
grid on;
title('Step Response of the Closed-Loop System');
xlabel('Time');
ylabel('Output');