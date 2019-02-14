% UTF8
%
% $Id: bspdvdcoll.cls 298 2016-05-05 12:13:58Z herbert $
%
\RequirePackage{DEoptions}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{dvdcoll}}
\ProcessOptions\relax
\LoadClass{dvdcoll}
\RequirePackage[utf8x]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{xcolor}
\input{exa-fontconfig}
\RequirePackage{babel}
\setlength\parindent{0pt}
\setcounter{page}{1}

\let\StartShownPreambleCommands\relax
\let\StopShownPreambleCommands\relax
\let\DocStart\relax
\let\DocEnde\relax
% ignore second documentclass command for display in book:
\renewcommand\documentclass[2][]{}

\endinput
