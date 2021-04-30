% Apoorv Singh 2019151
% PCS Quiz-4 Problem-3 Part-3

t = 0:0.05:5; %defining the time axis
A = 2; %amplitude of the signal
T = 10; 
s1 = 0.5; %value of variance^2
s0_t = A*cos(pi*t/T); %first input signal
s1_t = A*cos(2*pi*t/T); %second input signal
n_t1 = s1*randn(size(t)); %noise generated using randn function

r0_t = s0_t + n_t1; %noise added to s0_t for variace^2 = 0.5
r1_t = s1_t + n_t1; %noise added to s1_t for variace^2 = 0.5

h0_t = A*cos(pi*(t-T)/T); %h_t corresponding to s0_t
r0_dash_t = conv(r0_t, h0_t); %r'_t which is convolution of r_t and h_t corresponding to h0_t

h1_t = A*cos(pi*(t-T)/T); %h_t corresponding to s1_t
r1_dash_t = conv(r1_t, h1_t); %r'_t which is convolution of r_t and h_t corresponding to h1_t

%Now using variance^2 = 2
s2 = 2; %new value of variance^2
n_t2 = s2*randn(size(t)); %noise corresponding to new variance

r0_t2 = s0_t + n_t2; %new r_t corresponding to variace^2 = 2 and s0_t
r1_t2 = s1_t + n_t2; %new r_t corresponding to variace^2 = 2 and s1_t

r0_dash_t2 = conv(r0_t2, h0_t); %r'_t corresponding to h0_t
r1_dash_t2 = conv(r1_t2, h1_t); %r'_t corresponding to h1_t

subplot(2,1,1)
stem(r0_dash_t, 'red', 'b.-', 'LineWidth', 1, 'MarkerSize', 10);
%Red color corresponds to variance^2 = 0.5
hold
stem(r0_dash_t2, 'blue', 'b.-', 'LineWidth', 1, 'MarkerSize', 10);
%Blue color corresponds to variance^2 = 2
title('Plot of r-dash for s0_t')

subplot(2,1,2)
stem(r1_dash_t, 'red', 'b.-', 'LineWidth', 1, 'MarkerSize', 10);
%Red color corresponds to variance^2 = 0.5
hold
stem(r1_dash_t2, 'blue', 'b.-', 'LineWidth', 1, 'MarkerSize', 10);
%Blue color corresponds to variance^2 = 2
title('Plot of r-dash for s1_t')






