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
TFC=x*x./25+3*x.^1/2;
int(TFC)
ans = (sym)


%Define las variables y exponente a utilizar
%Aplique valor absoluto al resultado de la operacion ya que al tener los enteros como tal, me daría un resultado negativo.
A=(3);
B=(0);

%Proceso de operacion por T.F.C_Se elimino a B ya que sus valores son de 0 y todo núm.*0=0 
operacion=(B.^2/75+3*B.^2/4)-(A.^2/75+3*A.^2/4);

%Imprime el valor de la derivada utilizando el T.F.C.
%Aplique valor absoluto al resultado de la operacion ya que al tener los enteros como tal, me daría un resultado negativo.
fprintf('El valor de la derivada al utilizar el T.F.C.es:%2.1f\n',abs(operacion))

%Define los intervalos y el numero de rectangulos.
a = 3;
b = 0;
n = 100;
%√25+3x=0, -25/3=-8.3 Aplicamos valor absoluto ya que la tangente no puede quedar negativa (-8.3)-1= 8.3

%Determina la longitud de la base de x.
base = (b-a)/n;

%Definicion de la funcion.
x =a:base:(b-base);

%Representa la altura
altura=(x./8.3);

%Calcula el valor de cada uno de los rectangulos.
area = base*altura;

%Establece    la    linea   que   forma  la funcion
x2 = linspace(0,3,100);
y2 = (x./8.3);

%Inicio del  intervalo, fin del intervalo, numero de rectangulos.
xa = linspace(0,3,100);
yab =(x./8.3);

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
