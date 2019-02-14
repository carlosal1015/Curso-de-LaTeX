# Cuarta clase del Curso Vacacional de LaTeX #
El día de hoy (18/12/17) vamos a iniciar con algunos ejemplos básicos en LaTeX y se explicará paso a paso.

## Ejercicio 1 ##

Veamos el archivo [`exercise4_1.tex`](https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20B%C3%A1sico/Clases/Clase%202/exercise4_1.tex)

```tex
\documentclass{article}
\usepackage[utf8x]{inputenc}
\usepackage[spanish]{babel}
\spanishdatedel
\usepackage[pdftex]{graphicx}
\usepackage{float}
\usepackage{subcaption}
\usepackage{vmargin}
\setpapersize{A4} % Define el tamaño del papel.
\setmargins{2.5cm} % Margen izquierdo
{1.5cm} % Margen superior
{16.5cm} % Ancho del área de impresión
{23.42cm} % Longitud del área de impresión.
{0pt} % Espacio para el encabezado
{5mm} % Espacio entre el encabezado y el texto.
{0pt} % Espacio para el pie de página.
{5mm} % Espacio entre el texto y el pie de página.
\graphicspath{./images/}
\usepackage{wrapfig}
\usepackage{lipsum}

\input{code.tex}

\title{Ejemplo de uso de Imágenes y Tablas}
\author{Oromion}
\date{\today}

\begin{document}
\maketitle
\renewcommand{\contentsname}{Tabla de contenido}
\renewcommand{\listfigurename}{Lista de figuras}
\renewcommand{\figurename}{Fig.}
\tableofcontents
\listoffigures

\section{Incluir imágenes y figuras}

El ambiente \cmd{figure} permite definir un objeto flotante que corresponde a imágenes.

\begin{figure}[H]
	\centering
	\includegraphics[scale=.45]{example-image-a}
	\caption{Flujo de temperatura en un cubo}
\end{figure}

\subsection{Utilizar el ambiente \bftt{wrapfigure}}

\begin{wrapfigure}[11]{R}[5mm]{.45\textwidth}
	\centering
	\caption{Flujo de temperatura en un cilindro}
	\includegraphics[scale=.25]{example-image-b}
\end{wrapfigure}
\lipsum[1-2]

\subsection{Utilizar el paquete \bftt{subcaption}}

El paquete \cmd{subcaption} permite ubicar subfiguras cada una con su respectivo caption, dentro de un solo ambiente \cmd{figure}.

\begin{figure}[H]
	\centering
	\begin{subfigure}[t]{.475\textwidth}
		\centering
		\includegraphics[scale=.45]{example-image-a}
		\caption{Dispersión de la gripe}
	\end{subfigure}
	\hfill
	\begin{subfigure}[t]{.475\textwidth}
		\centering
		\includegraphics[scale=.35]{example-image-b}
		\caption{Clasificación de vértices de acuerdo al grado}
	\end{subfigure}
	\caption{Subfiguras con el paquete \bftt{subcaption}}
\end{figure}

\end{document}
```

> Un objeto tal como una figura o tabla debe aparecer lo más próximo al texto que hace referencia a él, sin embargo, al agregar cambios en el documento, los objetos pueden desplazarse de manera inadecuada. LaTeX resuelve el problema manipulando figuras y tablas como objetos flotantes

```tex
\begin{figure}[location]
...
\end{figure}
\begin{table}[location]
...
\end{table}
```

* La ubicación puede ser _t_ (top), _b_ (bottom) o _h_ (here).

* Los comandos `\tablename` y `\figurename` redefinidos dentro del documento modifican el encabezado del _caption_ de tablas y figuras respectivamente.

* El paquete `graphicx` es necesario para incluir archivos de imágenes en documentos LaTeX.

* El comando `\includegraphics` carga una imagen de formato svg, png, eps, jpg, pdf, etc. en el documento.

* Para definir la dirección de ubicación común para todas las imágenes puede utilizarse el comando `\graphicspath{{./addres/}}`.

El paquete `wrapfig` provee los ambientes `wrapfigure` y `wraptable` que permiten escribir texto alrededor de una figura o tabla.

```tex
\begin{wrapfigure}[P1]{P2}[P3]{P4}
    \includegraphics...
\end{wrapfigure}
```

> Los parámetros opcionales **P1** y **P3** indican el número de líneas que ocupará la figura o tabla y el espacio que de separación entre esta y el texto, respectivamente.

> Los parámetros obligatorios **P2** y **P4** indican la ubicación (L, R, I, O) (left, right for article e inner y outer for book) y el ancho de la figura respectivamente.

> El paquete `subcaption` mediante el ambiente `subfigure` permite utilizar subfiguras cada una con su `_caption_`.

```tex
\begin{figure}[ht]
    \centering
    \begin{subfigure}[location]{width}
        \centering
        \includegraphics...
        \caption{Sub caption a.}
    \end{subfigure}
    \hfill
    \begin{subfigure}[location]{width}
        \centering
        \includegraphics...
        \caption{Sub caption b.}
    \end{subfigure}
    \caption{General}
\end{figure}
```

> Los comandos `\rowcolor`, `\columncolor` y `\cellcolor` agregan color de fondo a filas, columnas y celdas correspondientes.

> El comando `\rowcolor{color}` se incluye justo antes de la fila que se quiere colorear.

> El comando `\rowcolors` de la librería `table` del paquete `xcolors`, puesto junto antes de iniciar la tabla, alterna el color entre fila y fila.

`\rowcolor{n-row}{color row 1}{color row 2}`

> El comando `\colorcolumn{color}` se incluye al definir la alineación de las columnas, por ejemplo:

`\begin{tabular}{|c|>{\columncolor{color}}l|r|}`
> Si se desea colorear el fondo de una celda específica se utiliza el comando `\cellcolor{color}{text}` en la ubicación de la celda.

> El paquete `\tabular` permite crear arreglos de datos con o sin bordes (tablas)

```tex
\begin{tabular}{|c|c|}
    \hline
    celda 11 & celda 12 \\
    \hline
    celda 21 & celda 22 \\
    \hline
```

> Los comandos `\tabcolsep` y `\arraystretch` modifican el espacio horizontal y vertical entre columnas y filas respectivamente, el primero recibe como parámetro de entrada una dimesión, el segundo un valor

```tex
\renewcommand[\tabcolsep]{dimension}
\renewcommand[\arraystretch]{value}
```

> El comando `\arrayrulewidth` modifica el grosor de las líneas de la tabla.

**El ambiente tabular**

>	Combinar celdas es una tarea que se consigue mediante los paquetes `multicol` y `multirow`.

>	El comando `\multicolumn` permite combinar celdas adyacentes horizontalmente.

```tex
\multicolumn{n_column}{align}{Contents}
```

>	El comando `\multirow` permite combinar celdas adyacentes verticalmente.

```tex
\multirow{n_row}{width (*)}{Contents}
```

>	Si se han combinado celdas en las cabeceras de fila probablemente se quiere rotar el texto, para esto se tiene el comando `\rotatebox`

```tex
\rotatebox{origin = c}{angle}{Contents}
```

>	Al combinar celdas se utiliza el comnaod `\cline{i-f}` para trazar líneas horizontales en las celdas adyacentes.
