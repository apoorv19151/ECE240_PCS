% Apoorv Singh 2019151
% PCS Assignment-4 Problem-3

x = 0:0.1:10; %defining x-axis
y_t = 8*sin(x); %signal under consideration
subplot(4,1,1);
plot(y_t, 'b', 'Linewidth', 2)
title('y_t = 8*sin(t)');

n = 12; %no of bits for the PCM transmitter
L = 2^n; %no of steps

V_max = 8; %max value of the signal
V_min = -8; %min value of the signal
step = (2*V_max)/L; %step size
partition = V_min:step:V_max;
codebook = V_min-step/2:step:V_max+step/2;
[index, quantized_value] = quantiz(y_t,partition,codebook); %Quantization process 

subplot(4,1,2);
stem(quantized_value, 'g', 'b.-', 'LineWidth', 2, 'MarkerSize', 15) %Quantized signal
title('Quantized signal');

bin = de2bi(index); %converting index values from decimal to binary
k = 1;
for i = 1:length(index)
    for j = 1:n
        encoded_signal(k) = bin(i,j);
        j=j+1;
        k=k+1;
    end
    i=i+1;
end

subplot(4,1,3)
stairs(encoded_signal, 'r',  'Linewidth', 2)
axis([0 100 -2 3]);
title('Encoded Signal');

matrix = reshape(encoded_signal,n,length(encoded_signal)/n); %Decoding process
index2 = bi2de(matrix');
decoded_signal = step*index2+V_min+(step/2);
subplot(4,1,4);
plot(decoded_signal, 'black', 'Linewidth', 2)
title('Decoded Signal')

