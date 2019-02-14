%%
%% LaTeX für wissenschaftliche Arbeiten
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
%\RequirePackage{DEoptions}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\ProcessOptions\relax
\LoadClass[headings=small]{scrartcl}
\RequirePackage{DEexa}
%\RequirePackage[ngerman]{babel}

% ignore second documentclass command for display in book:
\renewcommand\documentclass[2][]{}

\let\ps@origplain\ps@plain
\let\ps@plain\ps@empty % this class doesn't produces page numbers
                       % since this would make examples too big
                       % but if necessary there is origplain

\endinput

