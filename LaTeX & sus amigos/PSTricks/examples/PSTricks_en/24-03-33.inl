%% 
%%  A DANTE-Edition example
%% 
%%  Example 24-03-33 on page 452.
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
\begin{pspicture}(3,3)
  \pnode(0,1){A}
  \pnode(3,1){B}
  \pnode(3,2.25){C}
  \potentiometer[labeloffset=0pt](A)(B)(C){$P$}
\end{pspicture}
\end{document}
