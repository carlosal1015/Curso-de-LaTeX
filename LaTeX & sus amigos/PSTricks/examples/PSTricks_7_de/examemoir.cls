% $Id: examemoir.cls 298 2016-05-05 12:13:58Z herbert $
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
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions\relax

\LoadClass[twoside,10pt]{memoir}
\RequirePackage{DEexa}

\endinput
