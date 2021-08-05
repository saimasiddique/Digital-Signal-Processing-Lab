clc;
clear all;
close all;
%% Butterworth high pass Filter
% Filter Specifications
k1=input('Enter the passband gain in db:');
k2=input('Enter the stopband gain in db:');
w1=input('Enter the passband edge frequency in rad/Sec:');
w2=input('Enter the stopband edge frequency in rad/Sec:');
%Find the order and Cutofrf frequency using the given specification of
%filter
[n,Wc]=buttord(w1,w2,k1,k2,'s');
disp('The order is:');
disp(n);
disp('The cutoff frequency is:');
disp(Wc);
% Low pass filtering
[b,a]=butter(n,Wc,'high','s');
%Plotting magnitude & phase response
f=linspace(1,512,1000);
h=freqs(b,a,f);
m=20*log(abs(h));
subplot(2,1,1);
semilogx(f,m);
xlabel('Frequency');
ylabel('Magnitude');
title('Magnitude response of Butterworth HPF');
% Phase response
p=angle(h);
subplot(2,1,2);
semilogx(f,p);
xlabel('Frequency');
ylabel('Phase');
title('Phase response of Butterworth HPF');