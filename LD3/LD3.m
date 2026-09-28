x1 = 0:0.5:2*pi;
y1 = sin(x1) + cos(x1).^2;

figure(1)
plot(x1, y1, 'o-', ...
    'MarkerEdgeColor', 'r', ...
    'MarkerFaceColor', 'y')
xlabel('x')
ylabel('f(x)')
title('f(x) = sin(x) + cos^2(x)')
grid on

xlim([min(x1) max(x1)])
ylim([min(y1) max(y1)])

x2 = 0:0.01:2;
y2a = x2.^exp(1);
y2b = x2.^(2*exp(1));
y2c = x2.^(3*exp(1));

figure(2)
plot(x2, y2a, x2, y2b, x2, y2c)
xlabel('x')
ylabel('f(x)')
title('Funkcijos x^e, x^{2e} ir x^{3e}')
legend('x^e', 'x^{2e}', 'x^{3e}', 'Location', 'best')
grid on

x3 = -2*pi:0.5:2*pi;
y3 = x3.^3 + sin(x3);

figure(3)
quiver(x3, zeros(size(x3)), zeros(size(x3)), y3)
xlabel('x')
ylabel('y')
title('y(x) = x^3 + sin(x): vektorių grafikas')
grid on

figure(4)
bar(x3, y3)
xlabel('x')
ylabel('y')
title('y(x) = x^3 + sin(x): stulpelinė diagrama')
grid on
%%papildoma
A = 5.5; f = 8; sigma = 0.8;
U1 = 3.5; U2 = 1.5;
t = 0:0.002:1.2;

x = A*sin(2*pi*f*t) + sigma*randn(size(t));
y = x;
y(abs(y) < U2) = 0;

figure(5)
%%
subplot(1,2,1)
plot(t,x,'b-',t,y,'y:')
hold on
yline(U1,'--')
yline(U2,':')
title('Pradinis ir filtruotas signalai')
xlabel('Laikas (s)','FontSize',14,'FontWeight','bold')
ylabel('Įtampa (V)','FontSize',14,'FontWeight','bold')
legend('Pradinis','Filtruotas','U_1','U_2')
grid on
xlim([0 1.2])

%%
subplot(1,2,2)
i = x > U1;
stem(t(i),x(i))
hold on
plot(t(islocalmin(x) & i),x(islocalmin(x) & i),'gv')
plot(t(islocalmax(x) & i),x(islocalmax(x) & i),'r^','MarkerSize',12)
title('Reikšmės virš U_1')
xlabel('Laikas (s)','FontSize',14,'FontWeight','bold')
ylabel('Įtampa (V)','FontSize',14,'FontWeight','bold')
legend('Virš U_1','Min','Max')
grid on
xlim([0 1.2])