disp('stability');
nr=input('input the numerator coefficients:');
dr=input('input the denominator coefficients:');
z=tf(nr,dr,1);
[r,p,k]=residuez(nr,dr);
figure
zplane(nr,dr);
if abs(p)<1
disp('the system is stable');
else
disp('the system is unstable');
end;