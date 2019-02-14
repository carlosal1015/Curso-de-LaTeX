%% 
%%  Ein Beispiel der DANTE-Edition
%%  
%%  7. Auflage
%% 
%%  Beispiel 23-03-47 auf Seite 491.
%% 
%%  Copyright (C) 2016 Herbert Voss
%% 
%%  It may be distributed and/or modified under the conditions
%%  of the LaTeX Project Public License, either version 1.3
%%  of this license or (at your option) any later version.
%% 
%%  See http://www.latex-project.org/lppl.txt for details.
%% 
%% 
%% ==== 
% Show page(s) 1
%% 
%% 
\documentclass[]{exaarticle}
\pagestyle{empty}
\setlength\textwidth{193.16928pt}
%StartShownPreambleCommands
\usepackage{pst-circ}
%StopShownPreambleCommands
\begin{document}
\begin{pspicture}(4,3)
  \pnode(0,3){A}
  \pnode(0,0){B}
  \pnode(4,3){C}
  \pnode(4,0){D}
  \transformer(A)(B)(C)(D){$\mathcal T$}
\end{pspicture}
\end{document}
