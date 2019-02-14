%
% $Id: exasymbol.cls 633 2012-01-21 21:05:45Z herbert $
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
\RequirePackage{DEoptions}
\LoadClass[10pt]{article}
% ignore second documentclass command for display in book:
\let\ps@origplain\ps@plain
\let\ps@plain\ps@empty % this class doesn't produces page numbers
                       % since this would make examples too big
                       % but if necessary there is origplain
\setlength\tabcolsep{4pt}
\def\Lcs#1{\texttt{\small\textbackslash#1}}
\def\mathsymbol#1{$\csname#1\endcsname $ & \Lcs{#1} & }
\def\mathSymbol#1{$ \csname#1\endcsname $ & \Lcs{#1} 
    &  $ \csname big#1\endcsname $ & \Lcs{big#1} &}
\let\StartShownPreambleCommands\relax
\let\StopShownPreambleCommands\relax

% ignore second documentclass command for display in book:

\renewcommand\documentclass[2][]{}

\endinput

