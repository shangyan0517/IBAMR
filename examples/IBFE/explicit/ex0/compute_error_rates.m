clear all; close all; clc;
% computing error rates for IBFE ex0

A = load('errors.dat');

dx = A(:,1);

errors = A(:,2:end);

rates = zeros( length(dx)-1, length(errors(1,:)) );
for ii = 1:length(errors(1,:))
    rates(:,ii) = log(errors(1:end-1,ii)./errors(2:end,ii))./log(dx(1:end-1)./dx(2:end));
end

disp(rates);

%rates = horzcat(zeros(1,length(rates(1,:))),rates);

f1 = fopen(strcat('latex_pressure_errors.dat'),'w');
   
for aa = 1:length(dx)
  fprintf(f1, '%6.3e %s %6.5e %s %6.5e %s %6.5e %s\n', dx(aa), '&', errors(aa,4),'&', errors(aa,5),'&',errors(aa,6),'\\');
end

f2 = fopen(strcat('latex_pressure_rates.dat'),'w');
   
for aa = 1:length(dx)-1
  fprintf(f2, '%6.5e %s %6.5e %s %6.5e %s\n', rates(aa,4),'&', rates(aa,5),'&',rates(aa,6),'\\');
end

f3 = fopen(strcat('latex_velocity_errors.dat'),'w');
   
for aa = 1:length(dx)
  fprintf(f3, '%6.3e %s %6.5e %s %6.5e %s %6.5e %s\n', dx(aa), '&', errors(aa,1),'&', errors(aa,2),'&',errors(aa,3),'\\');
end

f4 = fopen(strcat('latex_velocity_rates.dat'),'w');
   
for aa = 1:length(dx)-1
  fprintf(f4, '%6.5e %s %6.5e %s %6.5e %s\n', rates(aa,1),'&', rates(aa,2),'&',rates(aa,3),'\\');
end