% $Id: exaarticle2.cls 298 2016-05-05 12:13:58Z herbert $
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
%\RequirePackage{dtk-logos}
\let\StartShownPreambleCommands\relax
\let\StopShownPreambleCommands\relax
\endinput

