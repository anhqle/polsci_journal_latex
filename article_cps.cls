% MIT License
% Copyright (c) 2016 Anh Le
% Comparative Political Studies article format

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{article_cps}[2016/11/21 Article in CPS format]

\LoadClass[12pt]{article}

% CPS: double spacing main text
\RequirePackage[doublespacing]{setspace}

\RequirePackage[margin=1in]{geometry}  % set the margins to 1in on all sides
\RequirePackage{graphicx}              % to include figures

\RequirePackage{amsmath}      % great math stuff
\RequirePackage{amsfonts}     % for blackboard bold, etc

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

% bibliography APA style
\RequirePackage{cleveref} % \Cref, \cref
\RequirePackage[natbibapa]{apacite}