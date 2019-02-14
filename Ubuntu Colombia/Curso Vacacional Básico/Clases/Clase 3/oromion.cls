\NeedsTeXFormat{LaTeX2e} % Indica la compatibilidad.
\ProvidesClass{oromion}[12/15/2017 V0.0.1 document class oromion]

\LoadClass[letterpaper]{article} % Clase heredado de article. % Se puede desarrollar chapter dentro de article.

\RequirePackage{tikz}
\RequirePackage[utf8]{inputenc}
\RequirePackage[spanish]{babel}
\RequirePackage{fancyhdr}
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
\cfoot{\tikz \draw (0,0) -- (2.5,0);}
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
	
	\vspace{9cm}
	
	\tikzset{pgfornamentstyle/.style = {scale = .3}}
	\tikz \node {\pgfornament{84}};
	%\begin{tikzpicture}
	%\draw[fill = magenta, opacity = .5] (0, .5) circle[radius =1];
	%\draw[fill = cyan, opacity =.5](.5, 0) circle[radius =1];
	%\draw[fill = yellow, opacity =.5](-.5,0) circle[radius =1];
	%\end{tikzpicture}
	
	%\vspace{5mm}
	
	\@date{}
\end{titlepage}
}
%%---------------------------------------------------------

\pagestyle{fancy}

\ProcessOptions \relax % Para que se procesen heredados y se busque desde la clase article.