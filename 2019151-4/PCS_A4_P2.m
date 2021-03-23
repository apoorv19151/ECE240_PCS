% Apoorv Singh 2019151
% PCS Assignment-4 Problem-2

f = 1; %frequency = 1Hz
t = 0:0.1:100; %time-axis
A = 2; %amplitude = 2V
x1_t = A*sawtooth(2*pi*f*t, 1/2); %triangular waveform with A = 2V
x2_t = A*sawtooth(2*pi*f*t); %sawtooth waveform with A = 2V

arr1 = rand(1,1001); %Quantization of triangular waveform with step size=2V
for i = 1:1001
    t1 = (i-1)/100;
    if(A*sawtooth(2*pi*f*t1, 1/2)>0)
        arr1(1,i) = 1;
    else
        arr1(1,i) = -1;
    end
end

subplot(4,1,1)
plot(arr1, 'b', 'Linewidth', 3)
title('Quantization of tringular waveform with step size = 2V')

arr2 = rand(1, 1001); %Quantization of sawtooth waveform with step size=2V
for i = 1:1001
    t1 = (i-1)/100;
    if(A*sawtooth(2*pi*f*t1)>0)
        arr2(1,i) = 1;
    else
        arr2(1,i) = -1;
    end
end

subplot(4,1,2)
plot(arr2, 'g', 'Linewidth', 3)
title('Quantization of sawtooth waveform with step size = 2V')

arr = rand(1,21); %Defining the intervals for step size=0.2V
arr(1,11) = 0;
for i = 1:21
    arr(1,i) = -2 + (i-1)*0.2;
end

arr3 = rand(1,1001); %Quantization of triangular waveform with step size=0.2V
for i = 1:1001
    t1 = (i-1)/100; 
    for j = 1:20
        if(A*sawtooth(2*pi*f*t1, 1/2)>=arr(1,j) && A*sawtooth(2*pi*f*t1, 1/2)<=arr(1,j+1))
            arr3(1,i) = (arr(1,j)+arr(1,j+1))/2;
        end
    end
end

subplot(4,1,3)
plot(arr3, 'r', 'Linewidth', 3)
title('Quantization of triangular waveform with step size = 0.2V')

arr4 = rand(1,1001); %Quantization of sawtooth waveform with step size=0.2V
for i = 1:1001
    t1 = (i-1)/100; 
    for j = 1:20
        if(A*sawtooth(2*pi*f*t1)>=arr(1,j) && A*sawtooth(2*pi*f*t1)<=arr(1,j+1))
            arr4(1,i) = (arr(1,j)+arr(1,j+1))/2;
        end
    end
end

subplot(4,1,4)
plot(arr4, 'black', 'Linewidth', 3)
title('Quantization of swatooth waveform with step size = 0.2V')

% When step size = 2V then we get a binary signal and a lot of information
% is lost whereas, when we take step size = 0.2V, information is
% preserved and suffice for the signal under consideration.
















