%windows technique of Hamming using Band stop filter
clc;
clear all;
close all;
N=input('Size of window:');
wc1=input('Lower Cut off frequency:');
wc2=input('Upper Cut off frequency:');
wc=[wc1 wc2];
h=fir1(N-1,wc/pi,'stop',hanning(N));
tf(h,1,1,'variable','z^-1');
freqz(h);
xlabel('Frequency');
ylabel('Magnitude');
title('FIR Filter');