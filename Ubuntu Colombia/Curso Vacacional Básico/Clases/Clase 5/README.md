# Quinta clase del Curso Vacacional de LaTeX #
El día de hoy (20/12/17) vamos a iniciar con algunos ejemplos básicos en LaTeX y se explicará paso a paso.

## Ejercicio 1 ##

Veamos el archivo [`exercise5_1.tex`](https://github.com/carlosal1015/Curso-de-LaTeX/blob/master/Curso%20Vacacional%20B%C3%A1sico/Clases/Clase%202/exercise5_1.tex)

```tex
\documentclass[article]
```
## Contadores ##

> Los contadores son ambientes o comandos que LaTeX cuenta de manera consecutiva y automática en un documento.
> Los contadores predefinidos de LaTeX son
| part | paragraph | figure | enumi |
| chapter | subparagraph | table | enumii|
|section | page | footnote| enumiii|
|subsection | equation | mpfootnote | enumiv|
|subsubsection |

> Los comandos `\thechapter` (en el estilo `book`), `\thefootnote`, `\thepage`, `\thesection` y `\thesubsection` devuelven el valor actual del respectivo contador.

> `\newtheorem` genera nuevos ambientes con su respectivo contador.

> Los estilos de numeración de los contadores pueden modificarse con cualquiera de las opciones `\arabic`, `\roman`, `\Roman`, `\alph` y `\Alph`.

```tex
\renewcommand{\thesection}{\Roman{section}}
```

> El comando `\newcounter` crea nuevos contadores definidos por el usuario

```tex
% En el preámbulo
\newcounter{obs}
\renewcommand{\obs}{\stepcounter{obs}{
          \bf Observación \theobs.}}
```
## Referencias cruzadas ##

> En cualquiera de los contadores en un documento LaTeX puede agregarse el comando `\label` para luego hacer referencia al número asignado por el contador.

```tex
\section{Cadenas de ADN} \label{adn}
...
... la sección \ref{adn} en la página \pageref{adn}...
```

> Para hacer referencia a un elemento etiquetado con `\label`, se utiliza el comando `\ref`.

> Para hacer referencia al contador (ambiente) `equation` se utiliza el comando `\eqref`.

> Se puede hacer referencia a la página en la que aparece algún elemento etiquetado con `\label` utilizando el comando `\pageref`.

## Documentos dinámicos ##

> El paquete `hyperref` habilita la creación de enlaces dinámicos dentro del documento y hacia objetos externos.

> El cargar el paquete `hyperref` las llamadas al comando `\ref` se convierten en enlaces dinámicos.

> Comandos muy útiles de `hyperref`:
* `\url`  enlaza a una `url` sin texto de máscara.
* `\href` enlaza a una `url` con texto de máscara.
* `\href{mailto:}`  enlaza a una dirección email con máscara.
* `\href{run:}` ebkaza a un archivo local.

> Personalizar los colores para los enlaces con `\hypersetup` (en el preámbulo)

* `\colorlinks` true or false.
* `\hidelinks`  hide all links
* `\linkcolor`  `\filecolor`
* `\citecolor`  `\urlcolor`
* `\linktoc`  none, section, page, all
