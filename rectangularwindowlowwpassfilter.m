%windows technique of Rectangular window using low pass filter
clc;
clear all;
close all;
N=input('Size of window:');
wc=input('Cut off frequency:');
h=fir1(N-1,wc/pi,boxcar(N));
tf(h,1,1,'variable','z^-1');
freqz(h);
xlabel('Frequency');
ylabel('Magnitude');
title('FIR Filter');