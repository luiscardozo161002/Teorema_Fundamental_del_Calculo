% Octave Script
% Title			:1.9 Teorema del Fundamental del Cálculo
% Description		:Script para graficar el ejericio 5 de la actividad 1.9
% Author		:Luis Gerardo Cardozo Carranza (Gerard_CRS) luiscardozo161002@gmail.com
% Date			:20210525
% sion		        :1
% Usage			:octave> /path/Teorema_del_Fundamental_del_Cálculo_1.9_Luis Gerardo Cardozo Carranza_3202
% Notes			:Requiere aplicacion octave usar en consola preferentemente.
%                    0
%Actividad_Ejercicio ∫ dx/√25+3x
%                    3

%limpia la pantalla y las variables.
clc, clear  

%Carga de la paqueteria Symbolic
pkg load symbolic

%El comando sym nos permite crear y dar un valor inicial a una variable simbólica x.
syms x;

%La integracion se realizara respecto a la variable simbolica por defecto (x). 
TFC=x*x./1/2*25+3*x;
int(TFC)
ans = (sym)


%Define las variables y exponente a utilizar
A= 3;
B= 0;
exp1=2;
exp2=3;
exp3=6;

%Proceso de operacion por T.F.C
operacion=((25*B.^exp2./exp3)+(3*B.^exp1./exp1))-((25*A.^exp2./exp3)+(3*A.^exp1./exp1))

%Imprime el valor de la derivada utilizando el T.F.C.
fprintf('El valor de la derivada al utilizar el T.F.C.es:%2.1f\n',operacion)

%Define los intervalos y el numero de rectangulos.
a = 3;
b = 0;
n = 100;

%Determina la longitud de la base de x.
base = (b-a)/n;

%Definicion de la funcion.
x =a:base:(b-base);

%Representa la altura
altura=(x./sqrt(25+3(x)));

%Calcula el valor de cada uno de los rectangulos.
area = base*altura;

%Establece    la    linea   que   forma  la funcion
x2 = linspace(1,4,100);
y2 =(x./sqrt(25+3(x)));

%Inicio del  intervalo, fin del intervalo, numero de rectangulos.
xa = linspace(1,4,100);
yab =(x./sqrt(25+3(x)));

%Dibuja una  grafica de barras sin espacios
g = bar(xa,yab,'histc');

%Permite continuar  graficando
hold on

%Grafica la funcion
plot(x2,y2);

%Asigna un nombre a la grafica 
title("Ejericicio 5: Integral definida de 3 hasta 0_(dx/√25+3x)");

%ajusta la grafica a los datos.
axis tight
