%windows technique of Triangular(Bartlet Window) using High pass filter
clc;
clear all;
close all;
N=input('Size of window:');
wc=input('Cut off frequency:');
h=fir1(N-1,wc/pi,'high',triang(N));
tf(h,1,1,'variable','z^-1');
freqz(h);
xlabel('Frequency');
ylabel('Magnitude');
title('FIR Filter');