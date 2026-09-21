v = 10:-1:-15
L = log2(v)
O = v./L
O = O.'

Cm1 = pi/2:pi/2:3*pi/2
Cm2 = -1:1
Cm3 = -3:-1:-5

C = [Cm1; Cm2; Cm3]
S = sum(C, 2)

A = 5.5;  
f = 8;  
sigma = 0.8;
U1 = 3.5; 
U2 = 1.5;
t = 0:0.002:1.2;

s = A * sin(2*pi*f*t);
n = sigma * randn(size(t));
x = s + n;

a = x(x > U1)
y = x;
y(abs(y) < U2) = 0;

dydis_x = length(x)
dydis_a = length(a)

y_max = max(y)
y_min = min(y)

A = str2num(input('Įveskite vektorių A (pvz. 1 2 3): ', 's')); %#ok<ST2NM>
A = A(:).';
B = reshape(repmat(A, 4, 1), 1, []);
disp('vektorius B yra:')
disp(B)