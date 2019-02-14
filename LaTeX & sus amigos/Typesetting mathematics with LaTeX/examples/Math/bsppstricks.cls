%
% $Id: bsppstricks.cls 631 2012-01-21 18:35:47Z herbert $
%
\RequirePackage{DEoptions}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\ProcessOptions\relax
\LoadClass[a4paper,12pt]{scrartcl}
\RequirePackage[utf8x]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{xcolor}
\RequirePackage{amsmath,amssymb}
\input{exa-fontconfig}
\RequirePackage[ngerman]{babel}

\RequirePackage{pst-all,pst-eucl,pst-func}
\psset{unit=1cm}
\RequirePackage{multido}
\pagestyle{empty}
\newcommand{\bs}{$\backslash$}

% Oval für pstricks
\newcommand{\myboxoval}[5]{%
  \rput(#1){\rnode{#2}{\psovalbox{\parbox[c][#3][c]{#4}{\begin{center}{\scriptsize #5}\end{center}}}}}}
% Oval für pstricks (tree)
\newcommand{\myboxovaltree}[4][]{%
  \Toval[#1]{\parbox[c][#2][c]{#3}{\begin{center}#4\end{center}}}}
% Rechteck für pstricks
\newcommand{\myboxbox}[5]{%
 \rput(#1){\rnode{#2}{\psframebox{\parbox[c][#3][c]{#4}{\begin{center}{\scriptsize #5}\end{center}}}}}}
% Rechteck mit Abrundung für pstricks
\newcommand{\myboxroundbox}[5]{%
 \rput(#1){\rnode{#2}{\psframebox[framearc=0.5]{\parbox[c][#3][c]{#4}{\begin{center}{\scriptsize #5}\end{center}}}}}}
% Kreis für pstricks
\newcommand{\myboxcircle}[6][doubleline=false]{
  \rput(#2){\rnode{#3}{\pscirclebox[#1]{\parbox[c][#4][c]{#5}{\begin{center}{\scriptsize #6}\end{center}}}}}}


\let\StartShownPreambleCommands\relax
\let\StopShownPreambleCommands\relax
\let\DocStart\relax
\let\DocEnde\relax
% ignore second documentclass command for display in book:
\renewcommand\documentclass[2][]{}

\endinput
