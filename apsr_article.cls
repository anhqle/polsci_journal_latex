% MIT License
% Copyright (c) 2016 Anh Le
% American Political Science Review article format

% Usage: \documentclass{article_apsr}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{article_apsr}[2014/08/21 Article in APSR format]

\LoadClass[12pt]{article} % APSR: main text is 12 pt

% APSR: double space, including footnote
\RequirePackage{setspace}
\doublespacing

\RequirePackage{letltxmacro}
\LetLtxMacro{\oldfootnote}{\footnote}
\renewcommand{\footnote}[1]{\oldfootnote{\begin{doublespace}#1\end{doublespace}}}

% APSR: single space in table and captions
\RequirePackage{etoolbox}
\preto\table{\par\singlespacing}

% APSR: footnote same size as text
\renewcommand*{\footnotesize}{\normalsize} 

% APSR bibliography
\RequirePackage{natbib}
\setcitestyle{aysep={}} % APSR: no comma between author year

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Non-APSR specific packages and settings

\RequirePackage[margin=1in]{geometry}  % set the margins to 1in on all sides
\RequirePackage{graphicx}              % to include figures

\RequirePackage{amsmath}      % great math stuff
\RequirePackage{amsfonts}     % for blackboard bold, etc

\RequirePackage{cleveref} % \Cref, \cref
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

\RequirePackage{caption} % Can insert newline \\ in caption
\RequirePackage{placeins} % \FloatBarrier