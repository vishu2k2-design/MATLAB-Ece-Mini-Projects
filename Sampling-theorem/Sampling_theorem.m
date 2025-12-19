% Project 1: Sampling Theorem Verification
% Author: ishu vishwakarma
% Description: Demonstrates under, Nyquist, and over sampling

clc;
clear;
close all;

% Message signal parameters
fm = 5;                      % Message frequency (Hz)
t = 0:0.0001:1;              % Continuous time axis
x = sin(2*pi*fm*t);          % Continuous signal

% Sampling frequencies
fs_under = 5;                % Undersampling
fs_over = 50;                 % Nyquist sampling
fs_nyquist = 10;              % Oversampling            
               

% Sampled time axes
t1 = 0:1/fs_under:1;
t2 = 0:1/fs_nyquist:1;
t3 = 0:1/fs_over:1;

% Sampled signals
x1 = sin(2*pi*fm*t1);
x2 = sin(2*pi*fm*t2);
x3 = sin(2*pi*fm*t3);

% Plotting
figure;

subplot(3,1,1)
stem(t1, x1, 'filled')
title('Under Sampling (fs < 2fm)')
xlabel('Time (s)')
ylabel('Amplitude')

subplot(3,1,2)
stem(t2, x2, 'filled')
title('Nyquist Sampling (fs = 2fm)')
xlabel('Time (s)')
ylabel('Amplitude')

subplot(3,1,3)
stem(t3, x3, 'filled')
title('Over Sampling (fs > 2fm)')
xlabel('Time (s)')
ylabel('Amplitude')
