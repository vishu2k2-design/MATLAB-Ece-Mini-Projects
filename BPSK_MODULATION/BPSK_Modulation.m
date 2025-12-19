% Project 2: BPSK Modulation and Demodulation
% Author: Ishu Vishwakarma
% Description: Simulation of BPSK system with noise

clc;
clear;
close all;


N = 100;            % Number of bits
EbN0_dB = 5;        % Signal-to-noise ratio
bit_rate = 1;      % Bit rate


data = randi([0 1], 1, N);


bpsk_signal = 2*data - 1;   % 0 -> -1, 1 -> +1


EbN0 = 10^(EbN0_dB/10);
noise = randn(1, N) / sqrt(2*EbN0);
received_signal = bpsk_signal + noise;


received_bits = received_signal > 0;


BER = sum(data ~= received_bits)/N;

% Plot signals
figure;

subplot(3,1,1)
stem(data, 'filled')
title('Original Binary Data')
xlabel('Bit Index')
ylabel('Bit Value')

subplot(3,1,2)
stem(bpsk_signal, 'filled')
title('BPSK Modulated Signal')
xlabel('Bit Index')
ylabel('Amplitude')

subplot(3,1,3)
stem(received_signal, 'filled')
title(['Received Signal with Noise | BER = ', num2str(BER)])
xlabel('Bit Index')
ylabel('Amplitude')
