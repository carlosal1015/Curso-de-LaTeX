# Segunda clase del Curso Vacacional de LaTeX

El día de hoy (13/12/17) vamos a iniciar con algunos ejemplos básicos en LaTeX y se explicará paso a paso.

## Ejercicio 1 ##
Veamos el archivo [`exercise2_1.tex`](https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20B%C3%A1sico/Clases/Clase%202/exercise2_1.tex)

```tex
\documentclass{article}
\usepackage[utf8x]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{PTSansNarrow}
\usepackage[spanish]{babel}
\spanishdatedel
\usepackage{mathtools,amssymb,amsfonts,amsmath,amsthm,mathrsfs,bm,times,bbold}
\usepackage[usenames,dvipsnames,x11names,table,svgnames]{xcolor}
\usepackage[pdftex]{graphicx}
\usepackage[colorlinks=true,urlcolor=blue,linkcolor=black,anchorcolor=black,citecolor=black]{hyperref}
\hypersetup{pdfinfo={
		Title={Clase 2 - Ejercicio 1},
		Author={Oromion},
		Keywords={layout},
		Subject={Curso Vacacional Básico},
		Producer={TeXstudio 2.12.6},
		Creator={pdfTeX Version 3.14159265 TeX Live 2018 Debian}
}}
\usepackage{layout}
\usepackage{showframe}
\begin{document}
\layout{}
\end{document}
```


> **Observaciones:**
- El paquete más importante del ejercicio es `\usepackage{layout}`. Con el comando `\layout` nos mostrará lo siguiente:

<p align="center">
  <img src="https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20B%C3%A1sico/Clases/Clase%202/images/exercise2_1.png">
</p>

Ahora coloque como parámetro opcional `\documentclass[a4paper]{article}` y compile el mismo archivo, notará que se modifica las dimesiones de los márgenes del documento.

**Repasemos la siguiente tabla de unidades y algunos comandos importantes de longtudes:**

|	Abreviatura	|	Definición													|	Valor en puntos (pt)|
|	:---:				|	:---:																|	:---:								|
|	pt					|	un punto es 1/72.27 pulgadas				|						1					|
|	mm					|	un milímetro												|									2.84|
|	cm					|	un centímetro												|			28.4						|
|in						|	pulgada															|		72.27							|
|ex						|	aproximadamente la altura de una 'x'|	indefinido|
|em						|	aproximadamente la altura de una 'M'|	indefinido|
>	Algunas longtudes predeterminadas de las macros de LaTeX:

`\baselineskip` Distancia vertical normal entre líneas en un párrafo.

`\baselinestretch` Multiplica `\baselineskip`.

`\columnsep` Distancia entre columnas.

`\columnwidth` Ancho de la columna.

`\evensidemargin` Margen para páginas pares.

`\linewidth` Ancho de una línea en el entorno local

`\oddsidemargin` Margen para páginas impares.

`\paperwidth` Ancho de la página.

`\paperheight` Altura de la página.

`\parindent` Sangrado del párrafo normal.

`\parskip` Espacio vertical extra entre los párrafos.

`\tabcolsep` Separación predeterminada entre columnas en un entorno tabular.

`\textheight` Altura del texto en la página.

`\textwidth` Ancho del texto en la página.

`\topmargin` Tamaño del margen superior.

`\unitlength` Unidades de longitud en el entorno `picture`.

## Ejercicio 2 ##

[`exercise2_2.tex`](https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20B%C3%A1sico/Clases/Clase%202/exercise2_2.tex)

```tex
\documentclass[twoside]{report}
\usepackage[utf8x]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{PTSansNarrow}
\usepackage[spanish]{babel}
\spanishdatedel
\usepackage{mathtools,amssymb,amsfonts,amsmath,amsthm,mathrsfs,bm,times,bbold}
\usepackage[usenames,dvipsnames,x11names,table,svgnames]{xcolor}
\usepackage[pdftex,demo]{graphicx}
\usepackage{float}
\usepackage[colorlinks=true,urlcolor=blue,linkcolor=black,anchorcolor=black,citecolor=black]{hyperref}
\hypersetup{pdfinfo={
		Title={Clase 2 - Ejercicio 1},
		Author={Oromion},
		Keywords={layout},
		Subject={Curso Vacacional Básico},
		Producer={TeXstudio 2.12.6},
		Creator={pdfTeX Version 3.14159265 TeX Live 2018 Debian}
}}
\usepackage[landscape, a6paper, paperwidth = 8cm, paperheight = 18cm]{geometry}
\usepackage{rotating}
\usepackage{lipsum}
\usepackage{lscape}
\usepackage{layout}
\begin{document}
\pdfpageheight = 10cm
\pdfpagewidth = 20cm

\begin{figure}
	\begin{rotate}{5}
		\textcolor{DarkBlue}{\large\lipsum[1]}
	\end{rotate}
\end{figure}

\newpage
\begin{landscape}
\lipsum[5]
\end{landscape}
\newpage
\layout{}
\end{document}
```

<p align="center">
  <img src="https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20B%C3%A1sico/Clases/Clase%202/images/exercise2_2a.png">
</p>

<p align="center">
  <img src="https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20B%C3%A1sico/Clases/Clase%202/images/exercise2_2b.png">
</p>

<p align="center">
  <img src="https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20B%C3%A1sico/Clases/Clase%202/images/exercise2_2c.png">
</p>

<p align="center">
  <img src="https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20B%C3%A1sico/Clases/Clase%202/images/exercise2_2d.png">
</p>

>	**Observaciones:**
-	En la primera página se usado el entorno `rotate` gracias al paquete `\usepackage{rotating}`, notamos que el texto ha rotado cinco grados en sentido antihorario.
-	En las opciones del `geometry` hemos utilizado `landscape`. En la página dos hemos empleado el entorno `landscape` y se nos muestra el párrafo en vertical.
-	En las páginas 3 y 4 vemos las dimesiones de los espacios y márgenes, son dos, puesto que hemos usado la opción `twoside`, esto también ocurre por defecto en la clase `book`.


|Comando	de formato de página|	Acción		|
|:---:													|	:---:			|
|	`\newpage`						| Finaliza la página actual e inicia otra.|
|	`\pagebreak[number]`	|	Rompe la página actual en el punto del comando. El argumento numérico opcional establece la prioridad en una escala de 0 a 4.|
|`\nopagebreak[number]`	| Detiene la página que se rompe en el punto del comando. El argumento numérico opcional establece la prioridad en una escala de 0 a 4.|
|	`\clearpage`		|Finaliza la página actual y hace que los imágenes flotantes encontrados en la entrada, pero aún aparezcan, se impriman.|

## Ejercicio 3 ##

[`exercise2_3.tex`](https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20B%C3%A1sico/Clases/Clase%202/exercise2_3.tex)

```tex

```
<p align="center">
  <img src="https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20B%C3%A1sico/Clases/Clase%202/images/exercise2_3.png">
</p>

>**Observaciones:**
-	Dentro de los parámetros opcionales de `\usepackage[]{geometry}` podemos definir `paper = a4paper` o simplemente `a4paper`. También son válidos a0paper, a1paper, a2paper, a3paper, a4paper, a5paper, a6paper, b0paper, b1paper, b2paper, b3paper, b4paper, b5paper, b6paper, letterpaper, legalpaper, executivepaper.

¡Vamos a la [tercera clase](https://github.com/carlosal1015/Curso-de-LaTeX/tree/master/Curso%20Vacacional%20B%C3%A1sico/Clases/Clase%203)!
