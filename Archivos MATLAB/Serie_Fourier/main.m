clear all
clc

% x(t)
t = 0:0.001:2*pi; % vector de tiempo
xt = (t>=0)+(t>=pi).*-2;
plot(t,xt,'b','LineWidth',3)
hold on
grid on

% Series de Fourier
k = 10
s = 0;
for n = 1:k
	p = (2/(n*pi))*(1-(-1)^n).*sin(n*t);
	s = s + p;
	plot(t,s)
	pause(1)
end
