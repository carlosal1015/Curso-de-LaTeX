% $Id: exaarticle2.cls 754 2013-02-20 21:42:41Z herbert $
%%
%% Example class for use with the book examples.
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
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[10pt]{article}
%\RequirePackage{dtklogos}
\let\StartShownPreambleCommands\relax
\let\StopShownPreambleCommands\relax
\endinput

