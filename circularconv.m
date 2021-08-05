clc;
clear all;
close all;
%Program to perform Circular Convolution
x1=input('Enter the first sequence to be convoluted:');
subplot(3,1,1);
l1=length(x1);
stem(x1);
xlabel('Time');
ylabel('Amplitude');
title('First sequence');
x2=input('Enter the second sequence to be convoluted:');
subplot(3,1,2);
l2=length(x2);
stem(x2);
xlabel('Time');
ylabel('Amplitude');
title('Second sequence');
if l1>l2
l3=l1-l2;
x2=[x2,zeros(1,l3)];
elseif l2>l1
l3=l2-l1;
x1=[x1,zeros(1,l3)];
end
f=cconv(x1,x2);
disp('The Circular convoluted sequence is');
disp(f);
subplot(3,1,3);
stem(f);
xlabel('Time');
ylabel('Amplitude');
title('Circular Convoluted sequence');