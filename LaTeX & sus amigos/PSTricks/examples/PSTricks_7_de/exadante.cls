%%
%% Copyright (C) 2011 Herbert Voss
%%
%% It may be distributed and/or modified under the conditions
%% of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%%
%% See http://www.latex-project.org/lppl.txt for details.
%%
%
\RequirePackage{DEoptions}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{danteedition}}
\ProcessOptions\relax

\PassOptionsToPackage{ngerman}{babel}
\LoadClass{danteedition}
\RequirePackage{DEexa}

\endinput
