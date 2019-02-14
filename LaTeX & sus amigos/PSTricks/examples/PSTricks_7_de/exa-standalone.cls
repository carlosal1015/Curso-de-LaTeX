%
% $Id: exa-standalone.cls 300 2016-05-05 19:05:57Z herbert $
%
%% Copyright (C) 2016 Herbert Voß
%%
%% It may be distributed and/or modified under the conditions
%% of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%%
%% See http://www.latex-project.org/lppl.txt for details.
%%
%
\RequirePackage{DEoptions}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{standalone}}
\ProcessOptions\relax
\LoadClass{standalone}
\RequirePackage[T1]{fontenc}
\input{exa-fontconfig}

\renewcommand\documentclass[2][]{}

\endinput

