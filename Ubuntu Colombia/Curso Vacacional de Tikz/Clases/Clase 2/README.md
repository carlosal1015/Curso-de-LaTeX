# Segunda clase del Curso Vacacional de Tikz
Antes de comenzar, el ejercicio *n* va a ser el ejercicio `exercise2_n.tex`.

El día de hoy (14/12/17) vamos a iniciar con las proposiciones de [Euclides](http://ctan.uniminuto.edu/graphics/pgf/base/doc/pgfmanual.pdf).

## Ejercicio 1 ##
[`exercise2_1.tex`](https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20de%20Tikz/Clases/Clase%202/exercise2_1.tex) es la Primera Proposición de Euclides. Veamos el código:

```tex
\documentclass{standalone}
\usepackage[utf8]{inputenc}
\usepackage[spanish]{babel}
\usepackage[T1]{fontenc}
\usepackage{PTSansNarrow}
\usepackage[usenames,dvipsnames,x11names,table,svgnames]{xcolor}
\usepackage{tikz}
\usetikzlibrary{calc,babel,through,intersections,backgrounds}
\begin{document}
\begin{tikzpicture}
\coordinate[label = left:{\textcolor{DarkBlue}{$A$}}] (A) at (0, 0);
\coordinate[label = right:{\textcolor{DarkBlue}{$B$}}] (B) at (1.15, .75);

\draw[blue] (A) -- (B);

\node (D) [name path = D, draw, circle through = (B), label = left: $D$]  at (A) {};
\node (E) [name path = E, draw, circle through = (A), label = right: $E$]  at (B) {};

\path[name intersections = {of = D and E}];

\coordinate[label = above:{\textcolor{DarkRed}{$C$}}] (C) at (intersection-1);

\coordinate[label = below:{\textcolor{DarkRed}{$D$}}] (D) at (intersection-2);

%Método 1:
%\draw[red] (A) -- (C);
%\draw[red] (B) -- (C);

%Método 2:
\draw[DarkCyan] (A) -- (C) -- (B) -- cycle;
\draw[DarkGreen] (A) -- (D) -- (B) -- cycle;

%Método 3:
%\fill[black, opacity = .5] (A) circle[radius =1pt];
%\fill[black, opacity = .5] (B) circle[radius =1pt];
%\fill[black, opacity = .5] (C) circle[radius =1pt];

%Método 4:
\foreach \point in {A, B, C}{
	\fill[black, opacity = .5] (\point) circle[radius = 1.5pt];
}
\foreach \point in {A, B, D}{
	\fill[black, opacity = .5] (\point) circle[radius = 1.5pt];
}

\begin{pgfonlayer}{background}
\fill[yellow] (A) -- (B) -- (C) -- cycle;
\end{pgfonlayer}

\begin{pgfonlayer}{background}
\fill[DarkMagenta] (A) -- (B) -- (D) -- cycle;
\end{pgfonlayer}

\node[below, text width = 10cm, align = justify] at (.5,-1.5){
\small\textbf{Proposición 1:}\par
\emph{Construir un \textcolor{orange}{triángulo equilátero} sobre un \textcolor{blue}{segmento de recta} dado.}
\par\vskip2em
Sea \textcolor{blue}{AB} un segmento de recta, contruyendo...
};
\end{tikzpicture}
\end{document}
```

Que nos muestra:

Este es un ejercicio sencillo donde vemos dos circunferencias y dos triángulos equiláteros. ¡Sigamos jugando con nuestros nuevos compases digitales!

<p align="center">
  <img src="https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20de%20Tikz/Clases/Clase%202/images/exercise2_1.png">
</p>


Como vemos en el código, hemos usado los paquetes inputenc y xcolor.

## Ejercicio 2 ##
[`exercise2_2.tex`](https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20de%20Tikz/Clases/Clase%202/exercise2_2.tex), utilizamos el comando
```tex
\documentclass{standalone}
\usepackage[utf8]{inputenc}
\usepackage[spanish]{babel}
\usepackage[T1]{fontenc}
\usepackage{PTSansNarrow}
\usepackage[usenames,dvipsnames,x11names,table,svgnames]{xcolor}
\usepackage{tikz}
\usetikzlibrary{calc,babel,through,intersections,backgrounds}
\begin{document}
\begin{tikzpicture}
\coordinate [label = left:{\textcolor{DarkBlue}{$A$}}] (A) at (0+0.1*rand,0+0.1*rand);
\coordinate [label = right:{\textcolor{DarkBlue}{$B$}}] (B) at (1.25+0.1*rand,0.25+0.1*rand);
\draw[blue] (A) -- (B);
\end{tikzpicture}
\end{document}
```
Veamos el concepto de número _pseudoaleatorio_ en C. Ingresar valores desde el teclado es engorroso, podemos asignar números aleatorios (random) como datos de entrada usando la función rand(), la cual genera valores _pseudoaleatorio_ entre 0 y RAND_MAX, un número entero enorme como dos mil millones, ejemplo:

```c
#include <stdio.h>
#include <stdlib.h>		//Librería requerida por rand()
#include <time.h>
void main (void){
    printf("%d\n", rand());
}
```
Salida: 1804289383

Al usar `rand()` por primera vez, parte de una *semilla* y genera siempre la *misma secuencia* de números, por eso es _pseudoaleatoria_ (no aleatoria); para mejorar -no eliminar- esta debilidad, podemos elegir una *semilla* diferente cada vez que iniciamos la generación:
```c
#include <stdio.h>
#include <stdlib.h>
#include <time.h>			//Librería requerida por time
void main (void){
	srand(time(NULL));	//Genera una semilla
											//time(NULL)= número de segundos que han pasado desde el 1 de enero de 1970
	printf("%d\n", rand());
	printf("%d\n", rand());
}
```
Salida:	1166072965

				38321763

Para generar un aleatorio *entero* en [0,n>, utilice:		rand()%n

Para generar un aleatorio *entero* en [0,n], utilice:		rand()%(n+1)

Para generar un aleatorio *entero* en [m,n], utilice:		rand()%(n-m+1) + m

Para generar un aleatorio *float* en [0,1], utilice:		(float)(rand()%1001)/1000		//con 3 decimales

Veamos un ejemplo de lo mencionado anteriormente:
```c
//Genere 4 números aleatorios entre 20 y 32.
#include <stdio.h>
#include <stdlib.h>
#include <time.h>		//Librería requerida por time
void main (void){
			int a = 20, b = 32, ab, i;
			ab = b - a + 1;
			srand(time(NULL));		//semilla
			for (i=0; i < 4; i++) printf("%d\n", rand()%ab+20);
}
```
Ahora veamos en Tikz :panda_face:

<p align="center">
  <img src="https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20de%20Tikz/Clases/Clase%202/images/exercise2_2.png">
</p>

## Ejercicio 3 ##
[`exercise2_3.tex`](https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20de%20Tikz/Clases/Clase%202/exercise2_3.tex)
Veamos el código del ejercicio:

```tex
\documentclass{standalone}
\usepackage[utf8]{inputenc}
\usepackage[spanish]{babel}
\usepackage[T1]{fontenc}
\usepackage{PTSansNarrow}
\usepackage[usenames,dvipsnames,x11names,table,svgnames]{xcolor}
\usepackage{tikz}
\usetikzlibrary{calc,babel,through,intersections,backgrounds}
\begin{document}
\begin{tikzpicture}
\coordinate [label = left:{\textcolor{DarkBlue}{$A$}}] (A) at ($ (0,0) + .1*(rand,rand) $);
\coordinate [label = right:{\textcolor{DarkBlue}{$B$}}] (B) at ($ (1.25,0.25) + .1*(rand,rand) $);
\draw[blue] (A) -- (B);
\end{tikzpicture}
\end{document}
```

<p align="center">
  <img src="https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20de%20Tikz/Clases/Clase%202/images/exercise2_3.png">
</p>

> **Observaciones** También son válidos:
- ;
