%% 
%%  Ein Beispiel der DANTE-Edition
%%  
%%  7. Auflage
%% 
%%  Beispiel 23-03-31 auf Seite 489.
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
  \pnodes(0,1){A}(3,1){B}(0,3){C}(3,3){D}
  \newZener(C)(D){$D_1$}
  \newZener[ison=false](A)(B){$D_2$}
\end{document}
