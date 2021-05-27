% Octave Script
% Title			:1.9 Teorema del Fundamental del Cálculo
% Description		:Script para graficar el ejericio 3 de la actividad 1.9
% Author		:Luis Gerardo Cardozo Carranza (Gerard_CRS) luiscardozo161002@gmail.com
% Date			:20210525
% sion		        :1
% Usage			:octave> /path/Teorema_del_Fundamental_del_Cálculo_1.9_Luis Gerardo Cardozo Carranza_3202
% Notes			:Requiere aplicacion octave usar en consola preferentemente.
%                    8
%Actividad_Ejercicio ∫ (√2x + 3^√x) dx
%                    0

%limpia la pantalla y las variables.
clc, clear  

%Carga de la paqueteria Symbolic
pkg load symbolic

%El comando sym nos permite crear y dar un valor inicial a una variable simbólica x.
syms x;

%La integracion se realizara respecto a la variable simbolica por defecto (x). 
TFC=2*x.^1/2+x.^1/3;
int(TFC)
ans = (sym)
A=0;
B=8;
%Proceso de operacion por T.F.C
operacion=(2*B.^1/2+1./(1/2))-(2*A.^1/2+1./(1/2));

%Imprime el valor de la derivada utilizando el T.F.C.
fprintf('El valor de la derivada al utilizar el T.F.C.es:%2.1f\n',operacion)

%Define los intervalos y el numero de rectangulos.
a = 0;
b = 2;
n = 100;

%Determina la longitud de la base de x.
base = (b-a)/n;

%Definicion de la funcion.
x =a:base:(b-base);

%Representa la altura
altura=x./sqrt(1+2*x.^2);

%Calcula el valor de cada uno de los rectangulos.
area =base*altura;

%Establece    la    linea   que   forma  la funcion
x2 = linspace(0,3,100);
y2 = x./sqrt(1+2*x.^2);

%Inicio del  intervalo, fin del intervalo, numero de rectangulos.
xa = linspace(0,3,100);
yab = x./sqrt(1+2*x.^2);

%Dibuja una  grafica de barras sin espacios
g = bar(xa,yab,'histc');

%Permite continuar  graficando
hold on

%Grafica la funcion
plot(x2,y2);

%Asigna un nombre a la grafica 
title("Ejericicio 3: Integral definida de 0 hasta 8_(√2x + 3^√x) dx ");

%ajusta la grafica a los datos.
axis tight
