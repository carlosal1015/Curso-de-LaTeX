# Primera clase del Curso Vacacional de Tikz
Antes de comenzar, el ejercicio *n* va a ser el ejercicio `exercise1_n.tex`.

El día de hoy (12/12/17) vamos a iniciar el curso con el tipo de documento `standalone` que nos permite ajustar el tamaño del documento.

## Ejercicio 1 ##
[`exercise1_1.tex`](https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20de%20Tikz/Clases/Clase%201/exercise1_1.tex)

```tex
\documentclass{standalone}
\usepackage[utf8x]{inputenc}
\usepackage[usenames,dvipsnames,x11names,table,svgnames]{xcolor}
\begin{document}
\textcolor{DarkBlue}{¡Bienvenidos amigos!}
\end{document}
```

Que nos muestra:

Este es un ejercicio sencillo donde imprimimos el texto ¡Bienvenidos amigos! con signos de exclamación y de color azul.

<p align="center">
  <img src="https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20de%20Tikz/Clases/Clase%201/images/exercise1_1.png">
</p>


Como vemos en el código, hemos usado los paquetes inputenc y xcolor.

## Ejercicio 2 ##
[`exercise1_2.tex`](https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20de%20Tikz/Clases/Clase%201/exercise1_2.tex), utilizamos el comando
```tex
\draw[opcional] (x0,y0) -- (xf, yf);
```
Es importante recordar que debe finalizar con ; (así como en la sintaxis de C).

```c
#include <stdio.h>
void main (void){
    printf("¡Hola mundo Tikz!");
}
```
Veamos el código del ejercicio:

```tex
\documentclass{standalone}
\usepackage[utf8x]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{PTSansNarrow}
\usepackage[usenames,dvipsnames,x11names,table,svgnames]{xcolor}
\usepackage{tikz}
\begin{document}
\textcolor{DarkBlue}{¡Bienvenidos!}
\tikz \draw[Red] (0, .5) -- (1.5, .5); \textcolor{DarkBlue}{al mundo tikz.}
\end{document}
```

<p align="center">
  <img src="https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20de%20Tikz/Clases/Clase%201/images/exercise1_2.png">
</p>
Muy bien, las lineas -- en el comando `\draw` indican que se dibujará un segemento de recta desde los puntos límites. Sencillo, ¿no?

> **Observaciones** También son válidos:
- \draw[blue] (0, .5) -- (1.5pt, .5);      
- \draw[red] (0, .5) -- (1.5mm, .5);      
- \draw[->,Red] (0, .5) -- (9.5pt, .5);   Esto es, un segmento de recta en forma de flecha
- Las coordenadas cartesianas van separadas por comas (x,y), en cambio en coordenadas polares van separados por : (r:t).

## Ejercicio 3 ##
[`exercise1_3.tex`](https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20de%20Tikz/Clases/Clase%201/exercise1_3.tex) veremos como dibujar una circunferencia en medio de un texto.

```tex
\documentclass{standalone}
\usepackage[utf8x]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{PTSansNarrow}
\usepackage[usenames,dvipsnames,x11names,table,svgnames]{xcolor}
\usepackage{tikz}
\usetikzlibrary{babel}
\begin{document}
Hola \tikz \draw (0,0) circle[radius =5pt]; mundo tikz
\end{document}
```
<p align="center">
  <img src="https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20de%20Tikz/Clases/Clase%201/images/exercise1_3.png">
</p>

## Ejercicio 4 ##
[`exercise1_4.tex`](https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20de%20Tikz/Clases/Clase%201/exercise1_4.tex)

```tex
\documentclass{standalone}
\usepackage[utf8x]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{PTSansNarrow}
\usepackage[usenames,dvipsnames,x11names,table,svgnames]{xcolor}
\usepackage{tikz}
\usetikzlibrary{babel}
\begin{document}
\tikz\clip[draw](-.1, -.1) rectangle (.5, .3);
\end{document}
```

<p align="center">
  <img src="https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20de%20Tikz/Clases/Clase%201/images/exercise1_4.png">
</p>

## Ejercicio 5 ##
[`exercise1_5.tex`](https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20de%20Tikz/Clases/Clase%201/exercise1_5.tex)
```tex
\documentclass{standalone}
\usepackage[utf8x]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{PTSansNarrow}
\usepackage[usenames,dvipsnames,x11names,table,svgnames]{xcolor}
\usepackage{tikz}
\usetikzlibrary{babel,calc}
\begin{document}
\begin{tikzpicture}
\draw[DarkCyan](0,0) circle[radius =1];
\draw[DarkRed] (0,0) ellipse[x radius =2, y radius =1];
\draw[DarkBlue] (0,0) rectangle (2,2);
\draw[DarkGreen](0,0) parabola (2,2);
\draw (0,0) -- (-3,0) -- (-1.5, 1.5) -- cycle;
\end{tikzpicture}
\end{document}
```
> **Observaciones**
- Primero dibujamos un circulo trigonométrico.
- Segundo una elipse centrada en el origen
- Un rectángulo con un vértice en (0,0) y el otro en (2,2)
- Una curva parabólica que pasa por (0,0)  y (2,2)
- Finalmente se dibuja un polígono de tres lados (se usa cycle para figuras cerradas en dos dimensiones)
- Se usó el ambiente `\begin{tikzpicture}foo\end{tikzpicture}` para poder graficar varias figuras en el mismo espacio disponible.

<p align="center">
  <img src="https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20de%20Tikz/Clases/Clase%201/images/exercise1_5.png">
</p>

## Ejercicio 6 ##
[`exercise1_6.tex`](https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20de%20Tikz/Clases/Clase%201/exercise1_6.tex)
```tex
\documentclass{standalone}
\usepackage[utf8x]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{PTSansNarrow}
\usepackage[usenames,dvipsnames,x11names,table,svgnames]{xcolor}
\usepackage{tikz}
\usetikzlibrary{babel,calc}
\begin{document}
\begin{tikzpicture}
\def\t{37} %t\in[0,360]
\def\r{2}	%r>0.
\def\tangle{5mm}
\draw[gray!50, very thin, xstep = .5, ystep = .5] (-\r-1, -\r-1) grid (\r+1,\r+1);
%\clip (.15, 0);
%\clip (0, .5cm) circle ;
%\clip(.15, 0) circle (.5cm); %Investigar el uso de clip.
\draw (\tangle, 0) arc[start angle = 0, end angle = \t, radius =\tangle];
\draw[>=latex, <->] (-\r-0.5,0) -- (\r+0.5, 0) node[right] {$x$};
\draw[>=latex, <->] (0, -\r-0.5) -- (0, \r+0.5) node[above] {$f(x)$};
\draw[line width =1pt,DarkCyan](0,0) circle[radius = \r];
\draw[line width =.05pt, thin, densely dotted, gray] (0, 0) -- (\t:\r);
\draw[DarkGreen] (0,0) +(\t:\r) -- ++({\r},{\r*tan(\t)});
\draw[DarkOrange] (0,0) +(\t:\r) -- ++(0, -{\r}); %Este trazo ayuda a resolver en exámenes de admisión
\draw[line width =.7pt, red!50!blue](0,0) ++(\t:\r) -- ++(0, -{\r*sin(\t)});
\draw[line width =.7pt, blue] (0,0) -- (+{\r*cos(\t)}, 0);
\fill[magenta] (0,0) -- (\tangle, 0) arc[start angle = 0, end angle = \t, radius =\tangle] -- cycle;
\shade[top color = green, bottom color = cyan] (0,0) -- (\tangle, 0) arc[start angle = 0, end angle = \t, radius =\tangle] -- cycle;
\draw[>=latex, <->] (\r, -\r-0.5) -- (\r, \r+0.5); %Trazo auxiliar
\end{tikzpicture}
\end{document}
```
> **Observaciones**
- Esta vez utilizaremos `\usetikzlibrary{calc}` para utilizar las funciones trigonométricas.
- El comando `\def\[nombre de la constante]{valor de la constante}`, nótese que puede ser Xpt, Ymm, Zcm o 20 como valor flotante.
- Véase como un identificador, en particular un objeto, algunas veces llamada variable (localidad en el espacio de almacenamiento  y su interpretación depende de dos atributos fundamentales: su categoría (tiempo de vida de almacenamiento) y su tipo (significado de los valores encontrados en el objeto identicado) ). Veamos este ejemplo en C:
```c
#include <stdio.h>
int sumadoble (int, int);     //Prototipo de la función
int productomedio (int, int); //Prototipo de la función
int numb1, numb2;
void main (void){             //Función principal
    printf("¡Hola!, por favor ingrese dos números enteros:\n"
    "[Ingrese ENTER después de ingresar el primer número]\n");
    scanf("%d %d", &numb1, &numb2);
    printf("\vDefinimos la suma doble como la suma clásica por 2 y su valor es: %d.\n", sumadoble(numb1, numb2));
    printf("\vDefinimos el productomedio como el producto clásico entre 2 y su valor es: %d.\n", productomedio(numb1, numb2));
}
int sumadoble (int numb1, int numb2){       //Función sumadoble, debe ser llamada desde la función principal.
  int s;
  s = 2 * (numb1 + numb2);
  return s;
}

int productomedio (int numb1, int numb2){   //Función productomedio, debe ser llamada desde la función principal.
  int p;
  p = 0.5 * numb1 * numb2;
  return p;
}
```
- Así, \def sería una variable global tal como numb1 o numb2, pero también podría ser una variable local como s o p dentro de las funciones sumadoble o productomedio respectivamente.
- `\draw (x,y) grid` dibuja la malla cuadriculada
- En los argumentos de los nodos pueden ir right, left, above, below
- El ++(x,y) redefine tu vector de posición.

<p align="center">
  <img src="https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20de%20Tikz/Clases/Clase%201/images/exercise1_6.png">
</p>
