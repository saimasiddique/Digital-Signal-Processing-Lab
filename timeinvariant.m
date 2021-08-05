clc;
clear all;
close all;
%Properties of DT Systems(Time Invariance)
%y(n)=x(n);
x1=input('Enter input sequence x1:');
n0=input('Enter shift:');
x2=[zeros(1,n0),x1];
y1=x1;
y2=x2;
y3=[zeros(1,n0),y1];
if(y2==y3)
display('system is time invariant');
else
display('system is time variant');
end;
subplot(2,2,1);
stem(x1);
xlabel('time');
ylabel('Amplitude');
title('Input signal');
subplot(2,2,2);
stem(x2);
xlabel('time');
ylabel('Amplitude');
title('Signal after shift');
subplot(2,2,3);
stem(y2);
xlabel('time');
ylabel('Amplitude');
title('L.H.S');
subplot(2,2,4);
stem(y3);
xlabel('time');
ylabel('Amplitude');
title('R.H.S');