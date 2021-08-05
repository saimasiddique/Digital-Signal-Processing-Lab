clc;
clear all;
close all;
N=input('Enter the number of elements:');
for i=1:N
re(i)= input('Enter the real part of the element:');
im(i)= input('Enter the imaginary part of the element:');
end
%% Call Dit_fft function
[re1,im1]= ditfft(re,im,N);
disp(re1);
disp(im1);
figure(1);
subplot(2,2,1);
stem(re1);
xlabel('Time period');
ylabel('Amplitude');
title('Real part of the output');
subplot(2,2,2);
stem(im1);
xlabel('Time period');
ylabel('Amplitude');
title('Imaginary part of the output');
%%dit_ifft
N=input('Enter the number of elements:');
for i=1:N
re(i)= input('Enter the real part of the element:');
im(i)= input('Enter the imaginary part of the element:');
end
for i=1:N
re(i)=re(i);
im(i)=-im(i);
end
%% call dit_ifft function
[re1,im1]=ditifft(re,im,N)

for i=1:N
re1(i)=re1(i)/N;
im1(i)=-im1(i)/N;

function [ re, im ] = ditfft( re, im, N)
%UNTITLED5 Summary of this function goes
here
% Detailed explanation goes here
N1=N-1;
N2=N/2;
j=N2+1;
M=log2(N);
% Bit reversal sorting
for i=2:N-2
if i<j
tr=re(j);
ti=im(j);
re(j)=re(i);
im(j)=im(i);
re(i)=tr;
end
disp(re1);
disp(im1);
%figure(2)
subplot(2,2,3);
stem(re1);
xlabel('Time period');
ylabel('Amplitude');
title('Real part of the output');
subplot(2,2,4);
stem(im1);
xlabel('Time period');
ylabel('Amplitude');
title('Imaginary part of the output');

im(i)=ti;
end
k=N2;
while k<=j
j=j-k;
k=k/2;
end
j=j+k;
j=round(j);
end
for l=1:M
le=2.^l;
le2=le/2;
ur=1;
ui=0;
sr=cos(pi/le2);
si=sin(pi/le2);
for j=2:(le2+1)
jm=j-1;
for i=jm:le:N
ip=i+le2;
tr=re(ip)*ur-im(ip)*ui;
ti=re(ip)*ui-im(ip)*ur;
re(ip)=re(i)-tr;
im(ip)=im(i)-ti;
re(i)=re(i)+tr;
im(i)=im(i)+ti;
end
tr=ur;
ur=tr*sr-ui*si;
ui=tr*si+ui*sr;
end
end
function [ re,im] = ditifft(re,im,N)
%UNTITLED2 Summary of this function goes here
% Detailed explanation goes here
N1=N-1;
N2=N/2;
j=N2+1;
M=log2(N);
%Bit reversal sorting
for i=2:N-2
if i<j
tr=re(j);
ti=im(j);
re(j)=re(i);
im(j)=im(i);
re(i)=tr;
im(i)=ti;
end
k=N2;
while k<=j
j=j-k;
k=k/2;
end
j=j+k;
j=round(j);
end
for l=1:M
le=2.^l;
le2=le/2;
ur=1;
ui=0;
sr=cos(pi/le2);
si=-sin(pi/le2);
for j=2:(le2+1)
jm=j-1;
for i=jm:le:N
ip=i+le2;
tr=re(ip)*ur-im(ip)*ui;
ti=re(ip)*ui+im(ip)*ur;
re(ip)=re(i)-tr;
im(ip)=im(i)-ti;
re(i)=re(i)+tr;
im(i)=im(i)+ti;
end
tr=ur;
ur=tr*sr-ui*si;
ui=tr*si+ui*sr;
end
end