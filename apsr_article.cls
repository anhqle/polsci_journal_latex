% MIT License
% Copyright (c) 2016 Anh Le
% American Political Science Review article format

% Usage: \documentclass{article_apsr}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{article_apsr}[2014/08/21 Article in APSR format]

\LoadClass[12pt]{article} % APSR: main text is 12 pt

\RequirePackage[margin=1in]{geometry}  % set the margins to 1in on all sides
\RequirePackage{graphicx}              % to include figures

\RequirePackage{amsmath}      % great math stuff
\RequirePackage{amsfonts}     % for blackboard bold, etc

% APSR: double space, including footnote, but not caption/table
\RequirePackage{setspace}
\doublespacing
\RequirePackage{etoolbox}
\preto\table{\par\singlespacing}

\RequirePackage{letltxmacro}
\LetLtxMacro{\oldfootnote}{\footnote}
\renewcommand{\footnote}[1]{\oldfootnote{\begin{doublespace}#1\end{doublespace}}}

\renewcommand*{\footnotesize}{\normalsize} % APSR: footnote same size as text

\RequirePackage{rotating} % for sideway table

% colored link
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\hypersetup{
    colorlinks,
    linkcolor={red!50!black},
    citecolor={blue!50!black},
    urlcolor={blue!80!black}
}

%\RequirePackage{float}
%\restylefloat{table}
\RequirePackage{caption} % Can inser newline \\ in caption
\RequirePackage{placeins} % \FloatBarrier

% bibliography
\RequirePackage{cleveref} % \Cref, \cref
\RequirePackage{natbib}
\setcitestyle{aysep={}} % APSR: no comma between author year
