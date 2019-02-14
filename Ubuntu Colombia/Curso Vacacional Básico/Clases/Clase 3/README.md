# Tercera clase del Curso Vacacional de LaTeX #
El día de hoy (15/12/17) vamos a iniciar con algunos ejemplos básicos en LaTeX y se explicará paso a paso.

**Aprendiendo a definir nuevos comandos**

En el primer ejercicio utilizaremos el paquete  `\usepackage[model_names]{xcolor}`
> Parámetros opcionales:
- `\usepackage[usenames]{xcolor}` (16 colores)
- `\usepackage[divpsnames]{xcolor}` (68 colores)
- `\usepackage[svgnames]{xcolor}` (150 colores)
- `\usepackage[x11names]{xcolor}` (300 colores)

## Ejercicio 1 ##

Veamos el archivo [`exercise3_1.tex`](https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20B%C3%A1sico/Clases/Clase%202/exercise3_1.tex)

```tex
\documentclass{article}
\usepackage[utf8x]{inputenc}
\usepackage[spanish]{babel}
\spanishdatedel
\usepackage{lipsum}
\input{colores.tex}
\title{Tomando el control de \LaTeX{}}
\author{Oromion}
\date{\today}
\begin{document}
\maketitle
\textcolor{myGreen}{Un texto en color verde.}
\end{document}
```

y [`color.tex`](https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20B%C3%A1sico/Clases/Clase%202/color.tex)

```tex
\usepackage{xcolor}
\definecolor{myGreen}{HTML}{36A736}
\definecolor{myBlue}{HTML}{02528F}
\definecolor{my}{HTML}{FF4312}
```

> **Observaciones:**
- El archivo `colores.tex` almacena el paquete `\usepackage{xcolor}`.

**Ejemplos de definiciones de colores con el comando `\definecolor`:**

|	Modelo |	Color												       	 | Example: `\definecolor{name}{model}{color}`|
|	:---:	 |	:---:														     |	:---:							                        |
|	gray	 |	Valor entre cero y uno.			       	 |`\definecolor{gris58}{gray}{.58}`           |
| rgb    | Tres valores entre cero y uno,        |`\definecolor{myblue}{rgb}{0, .6, .8}`      |
| RGB    | Tres valores enteros entre cero y 255.|`\definecolor{mygreen}{RGB}{0, 155, 10}`    |
| HTML   | Seis valores en hexadecimal           |`\definecolor{myred}{HTML}{AC0031}`         |
| cmyk   | Cuatro valores entre cero y uno       |`\definecolor{colorG}{cmyk}{0, .3, 1, 0}`   |

<p align="center">
  <img src="https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20B%C3%A1sico/Clases/Clase%202/images/exercise3_1.png">
</p>

**Definir un comando**

Para definir un comando utilizaremos `\newcommand{\name}[parametre]{definition}` en el preámbulo, "name" noo puede contener números naturales, para redefinir un comando usaremos `\renewcommand{\name}[#P][predefinited]{definition}` en caso de fallo use `\DeclarateRobustcommand{\name}[parametre]{definition}`.

## Ejercicio 2 ##

Veamos el archivo [`exercise3_2.tex`](https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20B%C3%A1sico/Clases/Clase%202/exercise3_2.tex)


## Ejercicio 3 ##

Veamos el archivo [`exercise3_3.tex`](https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20B%C3%A1sico/Clases/Clase%202/exercise3_3.tex)


El comando `\newtheorem` permite definir ambientes nuevos que pueden estar numerados de forma continua en todo el documento o por secciones.

`\newtheorem{name}{title}{numeration}`
