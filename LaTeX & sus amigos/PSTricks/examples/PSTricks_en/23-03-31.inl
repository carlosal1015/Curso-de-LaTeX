%% 
%%  A DANTE-Edition example
%% 
%% 
%%  Copyright (C) 2011 Herbert Voss
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
\documentclass[]{article}
\pagestyle{empty}
\setlength\textwidth{201.70511pt}

\usepackage{pst-circ}

\begin{document}
\begin{pspicture}(4,4)
\pnode(0,2){A}\pnode(4,1){B}\pnode(4,3){C}
\transistor[basesep=1cm](A)(B)(C)
\end{pspicture}
\end{document}
