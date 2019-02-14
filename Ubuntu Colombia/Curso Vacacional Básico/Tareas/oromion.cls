\NeedsTeXFormat{LaTeX2e} % Indica la compatibilidad.
\ProvidesClass{oromion}[12/15/2017 V0.0.1 document class oromion]

\LoadClass[letterpaper]{article} % Clase heredado de article. % Se puede desarrollar chapter dentro de article.

\RequirePackage{tikz}
\RequirePackage[utf8]{inputenc}
\RequirePackage[spanish]{babel}
\RequirePackage{fancyhdr}
\RequirePackage[explicit]{titlesec}
\RequirePackage{tikz}
\usetikzlibrary{shapes,shadows,calc,positioning}
\RequirePackage{graphicx}
\RequirePackage{pgfornament}
% No se debe cargar paquetes antes de cargar la clase.
%Como la clase aparece cargada cuando usa \documentclass, para cargar paquetes antes de \documentclass se usa \RequirePackage
%%--------------------------------------------------------
%% Definición de márgenes
%%------------------------------------------------
\RequirePackage[top = 2.7cm, bottom = 1.5cm, left = 2.5cm, right = 3cm, headsep = 5mm, headheight = 2cm, foot = 5mm, marginparwidth = 2cm, marginparsep = 5mm]{geometry}
%%--------------------------------------------------


%%---------------------------------------------
%% Encabezado y pie de página 
%%--------------------------------------------------
\lhead{\rightmark}
\rhead{Pág. \thepage}
\cfoot{\tikzset{pgfornamentstyle/.style = {scale = .2}}
	\tikz \node{\pgfornament{88}};}
%%----------------------------------------------------------

%%---------------------------------------------------------
%% Página de título
%%----------------------------------------------------------

\newcommand{\subtitle}[1][]{\newcommand{\@subtitle}{#1}} % Atención comando robusto. Es opcional y por defecto esta vacío.
\newcommand{\institution}[1]{\newcommand{\@institution}{#1}} % Aquí no se usará 2do [].
\newcommand{\department}[1]{\newcommand{\@department}{#1}}
\newcommand{\filiationauthor}[1]{\newcommand{\@filiationauthor}{#1}}
\newcommand{\tutor}[1]{\newcommand{\@tutor}{#1}}
\newcommand{\filiationtutor}[1]{\newcommand{\@filiationtutor}{#1}}

\renewcommand*{\maketitle}{
\begin{titlepage}
	\thispagestyle{empty} % No estilo fancy
	%\newgeometry{hmargin = {1.5cm}, vmargin = {2cm}, nomarginpar, ignorefoot, ignorehead}
	\newgeometry{top = 2.7cm, bottom = 1cm, left = 2.5cm, right = 1.5cm}
	\thispagestyle{empty}
	\center
	\Huge{\@title}\\
	\Large{\@subtitle}
	
	\vspace{3cm}
	
	\Large{\@institution}\\
	\small{\@department}
	
	\vspace{5mm}
	
	\includegraphics[scale=.15]{example-image-a}
	
	\vspace{5cm}
	
	\begin{minipage}{.4\textwidth}
		\textbf{\@author} \\
		\small{\@filiationauthor} %minuto 55
	\end{minipage}
	\hfill
	\begin{minipage}{.4\textwidth}
		\flushright
		\textbf{\@tutor}\\
		\small{\@filiationauthor}
	\end{minipage}
	
	\vspace{6cm}
	
	\tikzset{pgfornamentstyle/.style = {scale = .3}}
	\tikz \node {\pgfornament{84}};
	
	\vspace{5mm}
	
	\@date{}
\end{titlepage}
}
%%---------------------------------------------------------
% Título de secciones
%------------------------------------------------
% \titleformat{#1}[#1]{#2}{#3}{#4}{#5}[#2]
% {#1} \part, \chapter, \section, \subsection, \subsubsection, \paragraph, \subparagraph
% [#1] shape (determine la forma en que está dado el título)
% Si se usa nodo Tikz, no es necesario usar el parámetro opcional shape.
% {#2} format
%se define el formato. Se puede dejar vacío.
% {#3} label
% puede entrar en conflicto si se usa palabras confusas, i.e, parte o part.
% {#4} sep
% {#5} before-code
% lo que va antes del título, se puede usar tikz
% [#2] after code
% lo que va desués del título
%\titleformat{command}[shape]{format}{label}{sep}{before-code}[after-code]
%----------------------------------------------------------
\definecolor{color2}{HTML}{ACB8F1}
\definecolor{color1}{HTML}{089880}
\newcommand{\titleSec}[1]{
	\tikz \node[rectangle, text width = \textwidth, align = right, draw] (tS) at (0,0) {\thesection. #1};
}
\titleformat{\section}{\Huge\bfseries}{}{0pt}{\titleSec{#1}} % Con tikz
%\titleformat{\section}{\Huge\bfseriess\flushright}{}{0pt}{\thesection. #1} Sin tikz
%\titleformat{\section}{\Huge\bfseries\flushright}{}{0pt}{\textcolor{color2}}{\thesection. #1}}
\titleformat{\subsection}{\Large\bfseries}{}{0pt}{\textcolor{color1}{\thesubsection. #1}}[\vspace{1cm}]
\pagestyle{fancy}

\ProcessOptions \relax % Para que se procesen heredados y se busque desde la clase article.