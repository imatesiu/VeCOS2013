% Created by Alistair Smith, Sunrise Setting Ltd, 30 September 2009
% ewic.cls --- For Electronic Workshops in Computing
% 03/07/12 Small changes to work with newer versions of natbib
% 04/07/12 Change to address layout to ensure centered on width
%          and runningheads, copyright and Conf title reinstated

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ewic}[2012/07/06 v2.04 Electronic Workshops in Computing]

\renewcommand{\rmdefault}{phv}
\DeclareOption{cm}
              {\renewcommand{\rmdefault}{cmss}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass{article}

\RequirePackage[errorshow]{tracefnt}
\RequirePackage{titlesec,enumitem}

\setlength\voffset{-1in}
\setlength\hoffset{-1in}
\setlength\paperwidth{210mm}
\setlength\paperheight{297mm}
\setlength\textwidth{174mm}
\setlength\textheight{246mm}
\setlength\evensidemargin{18mm}%%12
\setlength\oddsidemargin{18mm}%%12
\setlength\columnsep{12mm}
\headsep 23pt
\headheight 26pt
\footskip 44.5pt
\parindent 0em
\parsep 0\p@
\topsep 0\p@
\setlength\parskip{10pt}

\@twosidetrue
\frenchspacing
\raggedbottom
\hyphenpenalty=1000
\pretolerance=8000
\tolerance=9500
\hbadness=8000
\vbadness=9000
\emergencystretch=5pt
\interlinepenalty=0
\brokenpenalty=10000
\displaywidowpenalty=0
\clubpenalty=10000
\widowpenalty=10000
\sloppy

\newcommand{\titlesize}{\fontsize{24}{28}\selectfont}

\def\email#1{{\itshape #1}}

\def\authorone#1{%
\gdef\@authorone{%
\begin{tabular}[t]{c}
#1
\end{tabular}\hspace{1em}%
}}
\let\@authorone\@empty

\def\authortwo#1{%
\gdef\@authortwo{%
\begin{tabular}[t]{c}
#1
\end{tabular}\hspace{1em}%
}}
\let\@authortwo\@empty

\def\authorthree#1{%
\gdef\@authorthree{%
\begin{tabular}[t]{c}
#1
\end{tabular}\hspace{1em}%
}}
\let\@authorthree\@empty

\def\authorfour#1{%
\gdef\@authorfour{%
\begin{tabular}[t]{c}
#1
\end{tabular}\hspace{1em}%
}}
\let\@authorfour\@empty

\def\authorfive#1{%
\gdef\@authorfive{%
\begin{tabular}[t]{c}
#1
\end{tabular}\hspace{1em}%
}}
\let\@authorfive\@empty

\def\authorsix#1{%
\gdef\@authorsix{%
\begin{tabular}[t]{c}
#1
\end{tabular}\hspace{1em}%
}}
\let\@authorsix\@empty

\newbox\absbox
\def\abstract{\lrbox\absbox\minipage{162mm}%
  \small\bfseries%
  }
\def\endabstract{\endminipage\endlrbox}

\def\keywords#1{
\gdef\@keywords{{\itshape\small #1}\normalsize}}
\let\@keywords\@empty

\twocolumn

\renewcommand\maketitle{\par
  \begingroup
     \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
       \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{mytitle}%
    \endgroup
  %\setcounter{footnote}{0}%
  \global\let\address\relax
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\@address\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\authorone\relax
  \global\let\authortwo\relax
  \global\let\authorthree\relax
  \global\let\authorfour\relax
  \global\let\authorfive\relax
  \global\let\authorsix\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\@maketitle{%
  \null
  \vskip 6pt %
   \begin{center}
  %\vskip 20pt
    {\titlesize\@title\par}%
    \vskip 58pt%
    {\small
      \lineskip .5em%
      %
      \@authorone%
      \@authortwo%
      \@authorthree% 
      \@authorfour%
      \@authorfive%
      \@authorsix%
      \par}%
    \vskip 32pt%
    {\usebox\absbox\par}
    \vspace{9pt}
    \end{center}
    {\lineskip .5em%
      %
      \hspace*{24mm}{\@keywords}\par}
      \vspace{13pt}
      
    \par}

\setcounter{secnumdepth}{4}
\titlelabel{\thetitle.}

\newcommand*\sectitle[1]{%
\normalfont\normalsize\bfseries\raggedright\MakeUppercase{#1}}

\titleformat{\section}[block]
{\normalfont\normalsize\bfseries}
{\thesection.}
{.66em}
{\sectitle}

\titlespacing*{\section}{0pt}{10pt \@plus 2pt \@minus 2pt}{0pt\@plus 2pt \@minus 2pt}

\titleformat{\subsection}[block]
{\normalfont\normalsize\bfseries}
{\thesubsection.}
{.66em}
{\normalfont\normalsize\bfseries\raggedright}

\titlespacing*{\subsection}{0pt}{0pt \@plus 2pt \@minus 2pt}{0pt\@plus 2pt \@minus 2pt}

\titleformat{\subsubsection}[block]
{\normalfont\normalsize\itshape}
{\thesubsubsection.}
{.66em}
{\normalfont\normalsize\itshape\raggedright}

\titlespacing*{\subsubsection}{0pt}{0pt \@plus 2pt \@minus 2pt}{-10pt}

\titleformat{\paragraph}[block]
{\normalfont\normalsize\bfseries}
{\theparagraph.}
{.66em}
{\normalfont\normalsize\bfseries\raggedright}

\titlespacing*{\paragraph}{0pt}{0pt \@plus 2pt \@minus 2pt}{-10pt}
                                                                   
\def\runningheads#1#2{\markboth{#1}{#2}}
\def\conference#1{\def\myfooter{\it #1}}

\def\ps@mytitle{\let\@mkboth\@gobbletwo%
\def\@oddfoot{\parbox[c]{\textwidth}{\small{\it%
\copyright\ The Authors.\ Published by BISL.}\hfill\thepage\hfill\phantom{\small\it \copyright\ The Authors.\ Published by BISL.}\\
\myfooter\mbox\hfill}}
\let\@evenfoot\@oddfoot
\def\@oddhead{}
\let\@evenhead\@oddhead%
}

\def\ps@myewic{%
\let\@mkboth\@gobbletwo%
\def\@oddfoot{\small\mbox{}\hfill\thepage\hfill\mbox{}}
\let\@evenfoot\@oddfoot
\def\@evenhead{\parbox[c]{\textwidth}{\centering\small\it \rightmark \\\leftmark}}%
\def\@oddhead{\parbox[c]{\textwidth}{\centering\small\it \rightmark \\\leftmark}}%
}

\pagestyle{myewic}

\setlist{partopsep=0pt,topsep=0pt}

\renewenvironment{quote}
               {\list{}{\itemsep 0pt\parsep 0pt
\setlength{\parskip}{0ex}%
\setlength{\partopsep}{0ex}\leftmargin=4mm\rightmargin\leftmargin}%
                \item\small\relax}
               {\endlist}

\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width 12pc
  \kern2.6\p@}
\renewcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent
    {\@makefnmark}#1}

\usepackage[tableposition=top]{caption}[2004/07/16]
\captionsetup[figure]{font=small,labelfont={bf,it},textfont=it,labelsep=colon,justification=justified,singlelinecheck=true}
\captionsetup[table]{font=small,labelfont={bf,it},textfont=it,labelsep=colon,justification=justified,singlelinecheck=true}

%\renewcommand\bibname{References}
\renewenvironment{thebibliography}{%
\section{\refname}
\list{}{\topsep=0\p@\parsep=0\p@
\partopsep=0\p@\itemsep=3\p@\labelsep=0\p@\itemindent=0\p@
\labelwidth=0\p@\leftmargin=0\p@
}\rm
\def\newblock{\ }
\sloppy\clubpenalty4000\widowpenalty4000
\sfcode`\.=1000\relax}{\endlist}

\RequirePackage{natbib}[2010/09/13]
\bibpunct{(}{)}{;}{}{}{,}
