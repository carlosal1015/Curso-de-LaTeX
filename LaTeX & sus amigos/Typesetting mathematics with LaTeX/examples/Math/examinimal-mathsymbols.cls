%
% $Id: ttctminimal.cls 124 2008-12-30 20:35:40Z herbert $
%
%%
%% Der Mathematiksatz mit LaTeX
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
\LoadClass[10pt]{article}
\RequirePackage[T1]{fontenc}
\setlength\tabcolsep{4pt}
\def\Lcs#1{\texttt{\textbackslash#1}}
\def\mathsymbol#1{$\csname#1\endcsname $ & \Lcs{#1} & }
\def\mathSymbol#1{$ \csname#1\endcsname $ & \Lcs{#1} 
    &  $ \csname big#1\endcsname $ & \Lcs{big#1} &}
\let\StartShownPreambleCommands\relax
\let\StopShownPreambleCommands\relax

% ignore second documentclass command for display in book:

\renewcommand\documentclass[2][]{}

\endinput

