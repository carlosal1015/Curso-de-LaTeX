<a href="https://ctan.org/pkg/arara?lang=en">
  <img src="https://i.stack.imgur.com/hjUsN.png" width="300" />
</a>

arara
===

[`arara`](https://ctan.org/pkg/arara?lang=en) es una herramienta de automatización $\TeX$ basada en reglas y directivas. Le brinda una manera de mejorar su experiencia $\TeX$. La herramienta es un esfuerzo para proporcionar una forma concisa de automatizar el flujo de trabajo diario de $\TeX$ para los usuarios y también para los escritores de paquetes. Los usuarios pueden escribir sus propias reglas cuando las proporcionadas no son suficientes.

```tex
% arara:pdflatex
\documentclass{article}
\begin{document}
Hello World!
\end{document}
```

```bash
carlosal1015@oromion$ arara hello.tex 
  __ _ _ __ __ _ _ __ __ _ 
 / _` | '__/ _` | '__/ _` |
| (_| | | | (_| | | | (_| |
 \__,_|_|  \__,_|_|  \__,_|

Processing 'hello.tex' (size: 88 bytes, last modified: 08/02/2018
01:02:40), please wait.

(PDFLaTeX) PDFLaTeX engine .............................. SUCCESS

Total: 1.10 seconds
```

Perfecto, hemos compilado nuestro `hello world` en $\LaTeX$.

Veamos otro ejemplo con PSTricks, entonces sabemos que el proceso de compiación es el siguiente:

```bash
carlosal1015@oromion$ latex file.tex
carlosal1015@oromion$ dvips file.dvi
carlosal1015@oromion$ ps2pdf file.ps
```

¿Cómo sería con arara?

```
% arara:
\documentclass{standalone}
\begin{document}
Hello
\end{document}
```

## Conceptos básicos

* Las reglas:

Son descripciones formales de cómo `arara` realiza cierta tarea.

* Directivas

Son comentarios especiales insertados en el archivo fuente en el cual usted indica cómo `arara` debería comportarse.

Puede insertar tanta directivas como desee y en cualquier posición del archivo.

* Identificador


### Directiva nula
```tex
% arara: pdflatex
```

### Directiva parametrizada

```tex
% arara: pdflatex:  {shell: yes }
```

Note que las reglas de `arara` se basa en parámetros nombrados, entonces están mapeados por sus identificadores de argumento correspondientes y no por sus posiciones.


## Notación de flecha

Algunas veces, 