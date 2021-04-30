% Apoorv Singh 2019151
% PCS Quiz-4 Problem-1

t = 0:0.01:3; %defining the time-axis
x_t = 5*sin(t) + 4*cos(t).*cos(t); %signal to be quantized

subplot(4,1,1)
stem(t, x_t, 'r', 'b.-', 'LineWidth', 0.5, 'MarkerSize', 10); %sampled signal
title('Sampled Signal')

arr1 = rand(1,301); %matrix to store the quantized values of the signal
arr2 = rand(1,17); %matrix to store the intervals used for quantization
arr3 = cell(1,16); %cell array to store bit values for 16-level quantizer
arr4 = cell(1,301); %cell array to store the encoded signal

for i = 1:16 %storing binary values in arr3
    arr3{i} = dec2bin(i-1,4);
end

for i = 1:17 %storing interval values in arr2
    arr2(1,i) = 4 + 0.0976*(i-1);
end

arr2(1,17) = 5.5625; %storing last interval value in arr2

for i = 1:301 %here we store the quantized values and encoded values in arr1 and arr4 respectively
    t_1 = (i-1)/100;
    for j = 1:16
        if((5*sin(t_1) + 4*cos(t_1)*cos(t_1)) >= arr2(1,j) && (5*sin(t_1) + 4*cos(t_1)*cos(t_1)) <= arr2(1,j+1))
            arr1(1,i) = (arr2(1,j)+arr2(1,j+1))/2; %assigning quantized value
            arr4{i} = arr3{j}; %assigning encoded value
        end
    end
end

%The 'if' statement in the loop above checks in which interval the sampled
%value lies, so that it can be quantized and then encoded

disp('The dimension of the quantized matrix is 1X301. The matrix is given below')
disp(arr1)

disp('The encoded matrix is given below')
disp(arr4)

subplot(4,1,2); %plotting quantized signal
plot(arr1, 'b', 'Linewidth', 3)
title('Quantized Signal')

arr_sig = rand(1,301); %here quantized signal is overlapped with input signal
for i = 1:301
    t_2 = (i-1)/100; %time axis of the input signal is changed here so that quantized signal can be overlapped with input signal 
    arr_sig(i) = 5*sin(t_2) + 4*cos(t_2)*cos(t_2);
end
subplot(4,1,3)
plot(arr1, 'b', 'Linewidth', 3)
hold;
plot(arr_sig, 'g', 'Linewidth', 3)
title('Quantized signal overlapped on input signal')

bit_stream = ''; %Generating bitstream here
for i = 1:301
    bit_stream = append(bit_stream, arr4{i});
end

disp('Bitstream is given below')
disp(bit_stream)
disp('Length of bitstream is')
disp(strlength(bit_stream))

arr_pulse = rand(1,20); %arr_pulse is an array which stores the first 20 pulses of the line code
for i = 1:20 %Using polar NRZ-encoding and plotting the line code
    if(bit_stream(i) == '0')
        arr_pulse(1,i) = 0;
    else
        arr_pulse(1,i) = 1;
    end
end

subplot(4,1,4) %plotting the line code
stairs([arr_pulse,arr_pulse(end)], 'black', 'Linewidth', 3)
title('Line-code plot')









