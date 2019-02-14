# Primera clase del Curso Vacacional de LaTeX
Antes de comenzar, el ejercicio _n_ va a ser el ejercicio `exercise1_n.tex`.

El día de hoy (11/12/17) vamos a iniciar con algunos ejemplos básicos en LaTeX y se explicará paso a paso.

## Ejercicio 1 ##
Veamos el archivo [`exercise1_1.tex`](https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20B%C3%A1sico/Clases/Clase%201/exercise1_1.tex)

```tex
\documentclass{article}
\usepackage[utf8x]{inputenc}
\usepackage[spanish]{babel}
\usepackage[T1]{fontenc}
\usepackage{libertine}
\usepackage{mathtools,amssymb,amsfonts,amsmath,amsthm,mathrsfs,bm,times,bbold}
\usepackage[usenames,dvipsnames,x11names,table,svgnames]{xcolor}
\usepackage[colorlinks=true,urlcolor=blue,linkcolor=black,anchorcolor=black,citecolor=black]{hyperref}
\hypersetup{pdfinfo={
		Title={Clase 1 -- ejemplo 1},
		Author={Orommion},
		Keywords={TeX, TeXlive, lenguaje de marcado, Lamport, Knuth},
		Subject={Curso Vacacional Básico},
		Producer={TeXstudio 2.12.6},
		Creator={pdfTeX Version 3.14159265 TeX Live 2018 Debian}
}}
\newcommand*\diff{\mathop{}\!\mathrm{d}}
\begin{document}

\textcolor{DarkBlue}{¡Hola! Bienvenido al mundo de \LaTeX{}.}

\noindent
\begin{center}
La función $\Gamma(x)$ se define como
\end{center}

\[\boxed{\Gamma(x)=\int_{0}^{\infty}t^{x-1}e^{-t}\diff t}\]
\end{document}
```
Muy bien, podemos identificar que un documento está formado por tres partes: el comando `\documentclass[optional]{obligatory}` en el cual los parámetros opcionales pueden ser a4, 12pt, entre otros y dentro de las llaves tenemos la siguiente palestra de "sabores" (¡pero solo una por documento!) book, beamer, report, letters, memoir y muchos más. Las otras dos partes que tienen extensión variable son la lista de paquetes ``\usepackage[optional]{obligatory}`` (en el ejemplo se ha mostrado los más populares) y el cuerpo que siempre va entre `\begin{document}foo\end{document}`.

> **Observaciones:**
- Hemos usado el comando `\textcolor[color favorito]{texto a colorear}`.
- Se definió en el preámbulo el comando `\newcommand*\diff{\mathop{}\!\mathrm{d}}` que representará el diferencial en la ecuación dada por la funcion Gamma de Euler.
- Y se usó el comando `\hypersetup` para cambiar las propiedades del documento de salida, a saber, PDF.

<p align="center">
  <img src="https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20B%C3%A1sico/Clases/Clase%201/images/exercise1_1.png"
	width="250">
</p>

## Ejercicio 2 ##
Veamos el segundo archivo de hoy [`exercise1_2.tex`](https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20B%C3%A1sico/Clases/Clase%201/exercise1_2.tex)
```tex
\documentclass{article}
\usepackage[utf8x]{inputenc}
\usepackage[spanish]{babel}
\usepackage[T1]{fontenc}
\usepackage{libertine}
\usepackage[shortlabels]{enumitem}
\usepackage{mathtools,amssymb,amsfonts,amsmath,amsthm,mathrsfs,bm,times,bbold}
\usepackage[usenames,dvipsnames,x11names,table,svgnames]{xcolor}
\usepackage[colorlinks=true,urlcolor=blue,linkcolor=black,anchorcolor=black,citecolor=black]{hyperref}
\hypersetup{pdfinfo={
		Title={Clase 2 -- ejemplo 2},
		Author={Orommion},
		Keywords={TeX, TeXlive, lenguaje de marcado, Lamport, Knuth},
		Subject={Curso Vacacional Básico},
		Producer={TeXstudio 2.12.6},
		Creator={pdfTeX Version 3.14159265 TeX Live 2018 Debian}
}}
\begin{document}
Veamos la siguiente numeración de algunas ramas de la matemática:
\begin{enumerate}[a)]
\item Análisis complejo
\item Teoría de colas
\item Geometría hiperbólica
\item Álgebra no conmutativa.
\end{enumerate}
\end{document}
```
> **Observaciones**
-	Hemos creado una lista numeradoa gracias al paquete `\usepackage[shortlabels]{enumitem}` y con el comando `\begin{enumerate}[x]\end{enumerate}` donde x puede ser un número, una letra u otro símbolo.
-	Es importante siempre utilizar `\item`, su omisión es causa muy frecuente de errores.

<p align="center">
  <img src="https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20B%C3%A1sico/Clases/Clase%201/images/exercise1_2.png"
	width="250">
</p>

¡Vamos a la [segunda clase](https://github.com/carlosal1015/Curso-de-LaTeX/tree/master/Curso%20Vacacional%20B%C3%A1sico/Clases/Clase%202)!
