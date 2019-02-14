%%
%% Copyright (C) 2009 Herbert Voss
%%
%% It may be distributed and/or modified under the conditions
%% of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%%
%% See http://www.latex-project.org/lppl.txt for details.
%%
%
\RequirePackage{DEoptions}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax

\LoadClass{book}
\let\StartShownPreambleCommands\relax
\let\StopShownPreambleCommands\relax

\endinput
