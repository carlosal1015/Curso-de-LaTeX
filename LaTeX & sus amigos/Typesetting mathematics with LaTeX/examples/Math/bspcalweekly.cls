% UTF8
%
% $Id: bspcalweekly.cls 631 2012-01-21 18:35:47Z herbert $
%
\RequirePackage{DEoptions}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{weekly}}
\ProcessOptions\relax
\LoadClass[German]{weekly}
\RequirePackage[utf8x]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{xcolor}
\input{exa-fontconfig}
\RequirePackage[ngerman]{babel}
\setlength\parindent{0pt}
\setcounter{page}{1}

\let\StartShownPreambleCommands\relax
\let\StopShownPreambleCommands\relax
\let\DocStart\relax
\let\DocEnde\relax
% ignore second documentclass command for display in book:
\renewcommand\documentclass[2][]{}

\endinput
