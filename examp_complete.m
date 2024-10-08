clear;
more off
rand('state',0);
randn('state',0);

%
% Codigo que genera los datos.
%
n=40;
beta0 = 10;
beta1 = 100;
beta2 = 9.8;
sigma=[];
for t=1:n
x(t,1)=t;
sigma(t,1)=8;  % Este es el error asociado a y
y(t,1)=beta0+beta1*t-(1/2*beta2)*t^2+sigma(t,1)*randn(1);
end

%
% Cantidad de datos a usar.
%
N = ...
x=x(1:N);
y=y(1:N);
sigma=sigma(1:N);

% Agregue un valor extremo a los datos
y(4)= ... 


% Construir la matriz de una ecuacion lineal/parabolica

G = [ ones(N,1) , x ,...];

% Aplicar el error de los datos como un factor de importancia relativa.
yw = y./sigma;
Gw = G./[sigma,sigma, ...];

% Resolver por minimos cuadrados

disp(['Solucion de Minimos Cuadrados'])
m2 = ....

% Matriz de Covarianza

ginv = inv(Gw'*Gw)*Gw';

disp(['Matriz de Covarianza'])
covm = ginv*eye(N).^2*ginv'

% Intervalos de Confianza 1.96-sigma (95%) 
disp(['Intervalo de Confianza al 95%  Solucion Norma 2'])

del = ....

[m2-del , m2 , m2+del]

% Correlacion de parametros
s=  .....
disp(['Correlacion de Parametros'])

r = ....

% Grafique el resultado

xx = min(x)-1:.05:max(x)+1;
yy = ...

figure(1)
plot(...);
hold on
errorbar(x,y,sigma,'ok');
title(['Datos y Modelo - Gaussiano '])
xlabel('Tiempo (s)');
ylabel('Elevacion (m)');       
hold off


%Monte Carlo
y0 = G*m2; 

nreal=1000;

for j = 1:nreal
%
  ytrial = y0 + .....;  % Agregue ruido aleatorio aca
  ywtrial=ytrial./sigma;
  
% Regresion Lineal L2
mmc(j,:)= ...;

end

figure(2)
 ;
hist(...);
title(['1000 valores de m(1) via Monte-Carlo'])


