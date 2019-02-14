%
% $Id: examinimal.cls 754 2013-02-20 21:42:41Z herbert $
%
%%
%% LaTeX für wissenschaftliche Arbeiten
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
\LoadClass{minimal}
%\RequirePackage[T1]{fontenc}
\let\StartShownPreambleCommands\relax
\let\StopShownPreambleCommands\relax

% ignore second documentclass command for display in book:

\renewcommand\documentclass[2][]{}

\endinput

