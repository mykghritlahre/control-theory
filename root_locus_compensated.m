numerator = [174.27 * 0.1, 174.27 * 1];
denominator = conv([1 0], conv([1 3], conv([1 7], [0.0301 1])));

% Create the transfer function
sys = tf(numerator, denominator);

% Plot the root locus
figure;
rlocus(sys);
hold on;

% Plot the specific points
s1 = -1.12 + 1.53i;
s2 = -1.12 - 1.53i;

plot(real(s1), imag(s1), 'rx', 'MarkerSize', 10, 'LineWidth', 2);
plot(real(s2), imag(s2), 'rx', 'MarkerSize', 10, 'LineWidth', 2);

grid on;
title('Root Locus Plot with Poles');
xlabel('Real Axis');
ylabel('Imaginary Axis');

legend('Root Locus','Poles');