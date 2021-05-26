% Octave Script
% Title			:1.9 Teorema del Fundamental del Cálculo
% Description		:Script para graficar el ejericio 1 de la actividad 1.9
% Author		:Luis Gerardo Cardozo Carranza (Gerard_CRS) luiscardozo161002@gmail.com
% Date			:20210525
% sion		        :1
% Usage			:octave> /path/Teorema_del_Fundamental_del_Cálculo_1.9_Luis Gerardo Cardozo Carranza_3202
% Notes			:Requiere aplicacion octave usar en consola preferentemente.
%                    3
%Actividad_Ejercicio ∫ x^3 dx
%                   -1
%limpia la pantalla y las variables.
clc, clear  
%Carga de la paqueteria Symbolic
pkg load symbolic
%El comando sym nos permite crear y dar un valor inicial a una variable simbólica x.
syms x;
%La integracion se realizara respecto a la variable simbolica por defecto (x). 
TFC=x^3;
int(TFC)
%La respuesta de la operacion no ha sido asignado a ninguna variable y por defecto es ans
a=3;
b=-1;
exp=4;
operacion=((a)^exp./exp)-((b)^exp/exp);
fprintf('El valor de la derivada al utilizar el T.F.C.es:%2.1f\n',operacion)
ans = (sym)
%Definimos los intervalos de la funcion
x=[-1:0.1:3];
%Definimos la funcion
y=(x.^3);
%Imprimimos la funcion en grafica
plot(x,y)
%Dibuja la cuadricula de la grafica
grid on
%Continua graficando despues de una grafica existente
hold on
%Grafica la funcion
plot(x,y)
%Dibuja la grafica de barras sin espacios
bar(x,y)
