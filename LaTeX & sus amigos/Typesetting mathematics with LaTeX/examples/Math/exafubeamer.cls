%
% $Id: exafubeamer.cls 631 2012-01-21 18:35:47Z herbert $
%
%%
%%
%% Praesentationen, 1st edition
%%
%% Prasentationen mit LaTeX
%%
%% Copyright (C) 2009 Voss
%%
%%
%% It may be distributed and/or modified under the conditions
%% of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%%
%% See http://www.latex-project.org/lppl.txt for details.
%%
%
\RequirePackage{DEoptions}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{FUbeamer}}
\ProcessOptions\relax
\LoadClass[xcolor=table]{FUbeamer}

\RequirePackage[T1]{fontenc}
\input{exa-fontconfig}

\let\StartShownPreambleCommands\relax
\let\StopShownPreambleCommands\relax

% ignore second documentclass command for display in book:

\renewcommand\documentclass[2][]{}


\endinput

