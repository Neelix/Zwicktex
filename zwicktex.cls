%% This is file `zwicktex.cls'
%% 
%% last change   : 2012-07-17
%% status        : 4.3.0 Release
%% created       : 2012-02-01
%%
%% subject       : typesetting german thesis for FH Kufstein Tirol 
%%                 Univeristy of Applied Sciences, Tyrol, Austria
%%
%%-------------------------------------------------------------------
%%
%% NOTICE:
%% This file may only be used for non-profit purposes.
%% It may not be distributed in exchange for money.
%% Feel free to distribute or change it, but
%% if you do so, keep the original author´s name tags
%%
%% The author provides it `as is' and does not guarantee it in any way.
%%
%% Copyright (c) Frank A Titze (frank.a.titze@gmx.eu)
%% Germany
%% for Fachhochschule Kufstein Tirol, Austria, Dep. Wirtschaftsinformatik
%% www.fh-kufstein.ac.at
%%
%% Distributed under
%% Open Source Initiative OSI - The MIT License (MIT)
%%
%% Permission is hereby granted, free of charge, to any person obtaining a copy of 
%% this LaTeX-Template and all associated files (the "Software"), to deal in 
%% the Software without restriction, including without limitation the rights to 
%% use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies 
%% of the Software, and to permit persons to whom the Software is furnished to do 
%% so, subject to the following conditions:
%%
%% The above copyright notice (including original author) and this permission notice 
%% shall be included in all copies or substantial portions of the Software.
%%
%% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, 
%% INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A 
%% PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT 
%% HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION 
%% OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
%% SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
%%
%%
%% This work consists of the following files:
%% ./
%% │   CLEAN-TMP.bat
%% │   EXAMPLE_Zwickmaster-fat-2012_v3.93-Beta.pdf
%% │   TEMPLATE_Zwickmaster-fat-2012_v3.93-Beta.tex
%% │   zwicktex.cls
%% │   zwicktexTestDB.bib
%% │
%% ├./config
%% │       indexstyle.ist
%% │       jabref.conf.xml
%% │       titlepage.tex
%% │       zwicktexdin.bst
%% │
%% ├./content
%% │       Abkuerzungen.tex
%% │       Anhaenge.tex
%% │       Erklaerung.tex
%% │       examples.for.template.tex
%% │       Hauptteil.tex
%% │       Kurzfassung.tex
%% │       Trennvorschriften.tex
%% │
%% └./graphics
%%         FHKufstein_grau60_EN.pdf
%%         TeXmaker1.png
%%
%%-------------------------------------------------------------------
\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{zwicktex}
		[2012/02/24 v3.91 fats Masters Thesis for FH Kufstein]
\ClassInfo{zwicktex}{\MessageBreak%
 This LaTeX Class is meant for a Masters Thesis, but do not \MessageBreak
 expect too much. Requirements match quick and dirty... ;-) \MessageBreak
 As its class name shows, this is dedicated to one of \MessageBreak our very special 
 and highly appreciated professors \MessageBreak Mag. Dr. Martin Zwicknagl 
 (www.zwicknagl.com) \MessageBreak Greetz, Frank (frank.a.titze@gmx.eu)\MessageBreak
}
%%-------------------------------------------------------------------
%% Changelog:
%% 2012-01-20 v1.2 fat
%%    Reengineering of class
%%
%% 2011-03-19 v1.1 fat
%%    Implementation of class options
%%
%% 2012-06-16 v3.92 fat
%%	  Merged additional functions
%%    Prepared RC for Publishing
%% 
%% 2012-06-17 v3.93 fat
%%	  Font size changed to 12pt
%%    fixed Class Option Passing Bug
%%    Line Spacing adjusted to match Word Defaults
%%    
%% 2012-06-20 v3.94 fat  
%%    Implemented gender specific titles on titlepage
%%	  Reworked titlepage layout to match policies
%%	  Figures and tables from appendix into main lof/lot
%%	  Captions justified
%%	  
%% 2012-06-22 v4.0 fat
%%	  Corrected some misspellings
%%	  Final Release 4.0 published
%%    
%% 2012-07-10 v4.1.1 fat   
%%    Minor Bugfix Listings over multiple pages now possible
%%    New floating environment 'myfloatbox'
%%    Input of examples moved to Hauptteil
%%    Input of Abkuerzungen and Trennvorschriften to Masterfile
%%    Updates in zwicktexDB
%%    footnotesep bug fixed
%%    New commands: \citefigure, \citefigureown, \citefiguremodified, \citefiguredata
%%
%% 2012-07-12 v4.2.0 fat
%%	  Added Citavi hint
%% 
%% 2012-07-17 v4.2.1 fat
%%	  Pagenumbering starts with titlepage
%%	  Footnote cite 'vgl.' now uppershape 'Vgl.'
%% 
%% 2012-07-17 v4.3.0 fat
%%	  New Class Option to prevent Appendix TOC
%%	  New command \mnote for Margin Note
%% 
%%-------------------------------------------------------------------
 % ClassOptions: noindex,noabbrevlist,nolistoflists,nolistoftables,nolistoffigures,noappendixtoc,nomarginnotes
 % Custom Commands:
 % \midx{}
 % \mcite{}
 % \footcite{}
 % \mnote{}
 % \zwicktex
 %-----------------------------------------------------------
\RequirePackage{ifthen}
\RequirePackage[patch]{kvoptions} 
\DeclareBoolOption[false]{noindex}%
\DeclareBoolOption[false]{noabbrevlist}%
\DeclareBoolOption[false]{nolistoflists}%
\DeclareBoolOption[false]{nolistoftables}%
\DeclareBoolOption[false]{nolistoffigures}%
\DeclareBoolOption[false]{noappendixtoc}%
\DeclareBoolOption[false]{nomarginnotes}%
\ProcessKeyvalOptions* %
 \ProcessOptions\relax
\PassOptionsToClass{%
  a4paper,
  oneside,
  12pt,
  final,
  chapteratlists=0pt, % 
  parskip=half, % 
  headings=small, 	% 
  appendixprefix,	% 
  numbers=noenddot,	% 
  listof=totoc,	% 
  bibliography=totoc, 	% 
  index=plainheading,
}{scrreprt}%
\DeclareOption*{% 
 \PassOptionsToClass{\CurrentOption}{scrreprt}}%
\ProcessOptions \relax
\LoadClass{scrreprt}
\RequirePackage[utf8x]{inputenc} 	
\RequirePackage{ae} % 
\RequirePackage[T1]{fontenc} % 
\RequirePackage{amsmath}	% 
\RequirePackage{amssymb}	% 
\RequirePackage{ngerman}
\RequirePackage[english,ngerman]{babel} 
\RequirePackage{gensymb}	% 
\RequirePackage{texlogos} 	% 
\RequirePackage{marvosym} 	% 
\RequirePackage{texnames} % 
\RequirePackage{pifont} % 
\RequirePackage{url} 	% 
\RequirePackage{textcomp} %  
\RequirePackage{pxfonts} % 
 \newcommand{\singlespacing}{}
 \newcommand{\onehalfspacing}{}
 \renewcommand*{\baselinestretch}{1.15}         % 
 \renewcommand*{\singlespacing}{\renewcommand*{\baselinestretch}{1.15}}         % 
 \renewcommand*{\onehalfspacing}{\renewcommand*{\baselinestretch}{1.5}}         % 
\RequirePackage{tgtermes} % 
\RequirePackage{tgheros} % 
\RequirePackage{eurosym} % 
\RequirePackage{lipsum} 	% 
 \PrerenderUnicode{äüößÄÜÖß–}
\RequirePackage{microtype} 	% 
\RequirePackage{xspace}	% 
\RequirePackage{geometry} % 
\RequirePackage{ragged2e}
\RequirePackage[automark,headsepline,plainheadsepline]{scrpage2} 
\RequirePackage{color} 
\RequirePackage[pdftex]{graphicx} 
 \graphicspath{{graphics/}} % 
\RequirePackage{float} 
\RequirePackage{subfigure}
\RequirePackage{rotating} 
\RequirePackage{listing} % 
\RequirePackage{listings} %
\RequirePackage[ngerman]{translator}
\RequirePackage[printonlyused]{acronym}  %
\RequirePackage{ellipsis,fixltx2e,mparhack}%
\RequirePackage[round,authoryear,sort&compress]{natbib} % 
\bibliographystyle{config/zwicktexdin}
\DeclareRobustCommand{\bibstyler}%
 {\bibpunct{(}{)}{;}{a}{}{,~}
  \gdef\NAT@biblabelnum##1{{[}{##1}{]}}}
 \bibstyler
\RequirePackage{chngcntr}
\widowpenalty=1000
\clubpenalty=1000
\renewcommand*{\lstlistlistingname}{Listenverzeichnis}
\newlength{\lstenvsep}
 \setlength{\lstenvsep}{\partopsep}
 \addtolength{\lstenvsep}{\topsep}
\definecolor{boxfill}{rgb}{0.95,0.95,0.99}
\definecolor{boxframe}{gray}{0.8}
\definecolor{comment}{gray}{0.5}
\definecolor{spot}{rgb}{0,0.2,0.6}
\lstdefinestyle{greybox}{%
  alsoletter={\\},
  moredelim=[is][\color{spot}]{<<}{>>}}
\lstset{%
 numberbychapter=false,
 aboveskip=\lstenvsep,
 belowskip=\lstenvsep,
 basicstyle=\ttfamily\footnotesize,
 commentstyle=\itshape\color{comment},
 keywordstyle=\color{spot},
 emphstyle=\color{spot},
 numbers=none,
 basewidth=0.5em,
 fontadjust=true,
 flexiblecolumns=true,
 keepspaces=false,
 literate={ö}{{\"o}}1
  {ä}{{\"a}}1
  {ü}{{\"u}}1
  {Ö}{{\"O}}1
  {Ä}{{\"A}}1
  {Ü}{{\"U}}1
  {ß}{{\ss}}1
}%
\lstnewenvironment{mystdbox}[1][]
 {\lstset{%
  aboveskip=1.5\lstenvsep,
  xleftmargin=3pt,
  xrightmargin=3pt,
  frame=single,
  backgroundcolor=\color{boxfill},
  fillcolor=\color{white},
  rulecolor=\color{boxframe},
  framesep=2.5pt,
  framerule=0.5pt,
  style=greybox,#1}}{}%
\lstnewenvironment{myfloatbox}[1][]
 {\lstset{%
  aboveskip=1.5\lstenvsep,
  xleftmargin=3pt,
  xrightmargin=3pt,
  frame=single,
  backgroundcolor=\color{boxfill},
  fillcolor=\color{white},
  rulecolor=\color{boxframe},
  framesep=2.5pt,
  framerule=0.5pt,
  float=!h,
  style=greybox,#1}}{}%
\lstnewenvironment{mycodebox}[1][]
 {\lstset{%
  aboveskip=1.5\lstenvsep,
  xleftmargin=3pt,
  xrightmargin=3pt,
  frame=single,
  backgroundcolor=\color{boxfill},
  fillcolor=\color{white},
  rulecolor=\color{boxframe},
  framesep=2.5pt,
  framerule=0.5pt,
  numbers=left, %
  numberstyle=\tiny, %
  numbersep=5pt, % 
  tabsize=2, %
  stringstyle=\ttfamily, 	% 
  showstringspaces=false, % 
  showspaces=false,           % 
  showtabs=false,             % 
  breakatwhitespace=true,
  breaklines=true,%
  prebreak = \raisebox{0ex}[0ex][0ex]{\ensuremath{\hookleftarrow}},
  morecomment=[l]{//} -> displays comments in italics (language dependent),
  style=greybox,#1}}{}%
\floatplacement{figure}{!h}
\floatplacement{table}{!h}
\floatstyle{komabelow}
\setcounter{tocdepth}{2} 	% 
\setcounter{secnumdepth}{2} 	%
\addto{\captionsngerman}{%
\renewcommand*{\bibname}{Quellenverzeichnis} 	% 
\renewcommand*{\figurename}{Abb.} 	% 
\renewcommand*{\tablename}{Tab.}}%
\counterwithout{figure}{chapter}
\counterwithout{table}{chapter}
\pagestyle{scrheadings}
 \clearscrheadings
\setheadwidth{textwithmarginpar}
\automark[section]{chapter} 
\ihead[]{\footnotesize\textit\leftmark}
\chead[]{}
\ohead[\pagemark]{\pagemark}
\cfoot[]{}
\geometry{%
 a4paper, 
 portrait, 
 left=3.5cm, 
 right=3cm, 
 top=3cm, 
 bottom=3cm}%
\makeatletter
\renewcommand*\dotfill{\leavevmode%
  \leaders\hbox{$\m@th
  \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
  mu$}\hfill\kern\z@}
\makeatother
\RequirePackage{remreset}
\makeatletter
 \@removefromreset{footnote}{chapter}
\makeatother
\RequirePackage[format=plain, 	% 
 justification=justified, 	% 
 labelfont={footnotesize,bf,sf}, 	% 
 labelsep=colon,		% 
 textfont={footnotesize,singlespacing,bf,sf}, 	% 
 textformat=simple,
 width={0.82\textwidth},
 aboveskip=1.0em,
 belowskip=0.85em
]{caption}
\makeatletter
 \let\oldfigure\figure
 \def\figure{\@ifnextchar[\figure@i \figure@ii}
 \def\figure@i[#1]{\oldfigure[#1]\centering}
 \def\figure@ii{\oldfigure\centering}
\makeatother
\DeclareRobustCommand*{\CiteSeite}{} %
\DeclareRobustCommand*{\CiteXKey}{} %
\newenvironment{zitat}[2][\CiteSeite]
{%
 \ifthenelse{\equal{#1}{}}%
  {\renewcommand*{\CiteSeite}{}
   \ClassWarning {ZwickTeX} {Citation without page source. Using Default entry ~}}
  {\renewcommand*{\CiteSeite}{#1}}
 \ifthenelse{\equal{#2}{}}%
  {\renewcommand*{\CiteXKey}{}
   \ClassWarning {ZwickTeX} {Citation without source reference. You MUST give a BibTeX-Key option for Zitat-Environment: begin{zitat}[S.123]{BibTeXkey}}}
  {\renewcommand*{\CiteXKey}{#2}}
 \begin{list}{}{%
 \setlength{\leftmargin}{1cm}%
 \setlength{\rightmargin}{0pt}%
 }%
 \item%
 \begingroup%
 \em%
 \glqq% 
}%
{\grqq \\%
 \endgroup%
 \hspace*{0.1em} \hfill \protect\citep[\CiteSeite]{\CiteXKey}
 \end{list}}%
\let\origitemize\itemize
\def\itemize{\origitemize\itemsep-4pt}
\let\origenumerate\enumerate
\def\enumerate{\origenumerate\itemsep-4pt}
\let\origdescription\description
\def\description{\origdescription\itemsep-4pt}
\DeclareRobustCommand*{\mcopy}{\textsuperscript{\copyright\xspace}}
\DeclareRobustCommand*{\mregistered}{\textsuperscript{\textregistered\xspace}}
\DeclareRobustCommand*{\mtrade}{\texttrademark\xspace}
\DeclareRobustCommand*{\promill}{\textperthousand}
\DeclareRobustCommand*{\latex}{\LaTeX\xspace}
\DeclareRobustCommand*{\tex}{\TeX}
\DeclareRobustCommand*{\bibtex}{\BibTeX\xspace}
\DeclareRobustCommand*{\sixsigma}{$6\sigma$\xspace}
\RequirePackage{tocstyle}
 \usetocstyle{KOMAlike}
\makeatletter
\providecommand{\protected@immediate@write}[3]{%
 \begingroup
  \let\thepage\relax
   #2%
   \let\protect\@unexpandable@protect
   \edef\reserved@a{\immediate\write#1{#3}}%
   \reserved@a
  \endgroup
 \if@nobreak\ifvmode\nobreak\fi\fi
}%
\newenvironment*{tocconditional}[1]{%
 \expandafter\ifx\csname if@toccond@#1\expandafter\endcsname
  \csname iftrue\endcsname
  \else
   \value{tocdepth}=-10000\relax
  \fi
 \typeout{tocdepth in `#1': \the\c@tocdepth}%
}{%
}%
\AtBeginDocument{%
  \addtocontents{toc}{\string\begin{tocconditional}{main}}
}%
\BeforeClosingMainAux{%
 \begingroup
  \let\protected@write\protected@immediate@write
   \addtocontents{toc}{\string\end{tocconditional}}%
 \endgroup
}%
\newcommand*{\newtocconditional}[2][false]{%
 \expandafter\newif\csname if@toccond@#2\endcsname
  \csname @toccond@#2#1\endcsname
}%
\newcommand*{\settocconditional}[2]{%
 \csname @toccond@#1#2\endcsname
}%
\newtocconditional[true]{main}
\newtocconditional{appendix}
\ifthenelse{\boolean{zwicktex@noappendixtoc}}{}{%
 \g@addto@macro\appendix{%
  \addchap{Anhangsverzeichnis}%
 }% 
}% 
\g@addto@macro\appendix{%
  \addtocontents{toc}{\string\end{tocconditional}^^J
    \string\begin{tocconditional}{appendix}}%
  \appendixtableofcontents
  \clearpage
  \counterwithin{page}{chapter}%
 \g@addto@macro\cl@chapter{\stepcounter{page}}%
}%
\newcommand*{\appendixtableofcontents}{%
 \showtoc[{ %
  \aliastoc{\tocstyleTOC}{toc}%
   \settocconditional{main}{false}%
    \settocconditional{appendix}{true}%
 }]{toc}%
}%
\newcommand*{\postappendix}{%
 \addtocontents{toc}{\string\end{tocconditional}^^J%
  \string\begin{tocconditional}{main}}%
 \clearpage
}%
\makeatother
\newcounter{pagetemp} % 
\addto{\pagemark}{\protect{\stepcounter{pagetemp}}} % 
\makeatletter
\renewcommand*{\c@t@sin}[2]{%
 \@ifbothc@t@s{chngcntr}{#1}{#2}{\@addtoreset{#1}{#2}%
  \@namedef{the#1}{\@nameuse{the#2}-\arabic{#1}}}}
\makeatother
\RequirePackage[makeindex]{imakeidx}
\DeclareRobustCommand{\midx}[1]{#1\index{#1}}
\makeatletter
\deffootnote[1em]{1.5em}{1em}{\textsuperscript{\thefootnotemark}~}
\setlength{\footnotesep}{1.5em}
\DeclareRobustCommand{\footcite}[2][]{%
 \protect\footnote{\citealp[Vgl.][#1]{#2}}} % 
\DeclareRobustCommand{\footcitecitefull}[2][]{%
 \protect\footnote{\citealp*[Vgl.][#1]{#2}}} 	% 
\DeclareRobustCommand{\footcitefull}[2][]{%
 \footcitecitefull{#1}{#2}} 	% 
\DeclareRobustCommand{\mfoot}[1]{\protect\footnote{{#1}}}
\DeclareRobustCommand{\citefigure}[2]{\protect{\citep[{Quelle:}][#1]{#2}}}
\DeclareRobustCommand{\citefigureown}{\protect{~(Quelle: eigene Darstellung)}}
\DeclareRobustCommand{\citefiguremodified}[2]{\protect{~\citep[{Modifiziert nach}][#1]{#2}}}
\DeclareRobustCommand{\citefiguredata}[2]{\protect~{\citep[{Eigene Darstellung, Daten entnommen aus}][#1]{#2}}}
\makeatother
\RequirePackage[%
 pdfproducer={zwicktex.cls by Frank A Titze 2012-02-25}, 
 pdfcreator={Texmaker and MiKTeX},
 pdflang=de,
 colorlinks=true,
 linkcolor=black,
 citecolor=black,
 urlcolor=black,
 backref=page,
 pdftex,
 final=true,
 bookmarks=true,
 pdfpagemode=UseThumbs, 
 pdfview=FitH,
 pdfstartview=Fit,
 unicode=true,
 breaklinks=true,
 hyperfootnotes=true,
]{hyperref}
\RequirePackage{backref}
\makeatletter
\renewcommand*{\backreftwosep}{ und~}
\renewcommand*{\backreflastsep}{ und~}
\renewcommand*{\backref}[1]{}
\renewcommand*{\backrefalt}[4]{%
\ifcase #1 %
  (nicht zitiert).%
 \or
  (zit. auf Seite~#2).%
 \else
  (zit. auf den Seiten~#2).%
\fi
}
\makeatother
\RequirePackage[makeindex,toc,acronym,nonumberlist]{glossaries}
\makeatletter
\deftranslation[to=German]{Acronyms}{Abkürzungsverzeichnis} % 
\renewcommand*{\glspostdescription}{} % 
\newglossarystyle{mylistdotted}{%
 \glossarystyle{listdotted}%
  \renewenvironment{theglossary}{%
   %\protect\vspace{0.2em}
    \begin{description}
     \setlength{\glslistdottedwidth}{.27\linewidth}%
	 \setlength{\itemsep}{0em}%
	 \setlength{\itemindent}{-1.5em}%
	 \setlength{\parskip}{0em}}{%
	\end{description}}%
   \renewcommand*{\glsgroupskip}{}}%
\makeatother
\DeclareRobustCommand{\zwicktex}{\texorpdfstring{Zwick\kern-.125em\TeX}{ZwickTeX}}
\def\execute{%
 \begingroup
  \catcode`\%=12
  \catcode`\\=12
  \executeaux}
\def\executeaux#1{\immediate\write18{#1}\endgroup}
\DeclareRobustCommand*{\makemybibtex}[1]{\execute{bibtex #1}}
\DeclareRobustCommand*{\makemyglossary}[1]{\execute{makeindex -s #1.ist -t #1.alg -o #1.acr #1.acn}}
\DeclareRobustCommand*{\makemyacronyms}[1]{\execute{makeindex -s #1.ist -t #1.glg -o #1.gls #1.glo}}
\makemyacronyms{\jobname}
\makemyglossary{\jobname}
\makemybibtex{\jobname}
\makeglossaries % 
\makeindex[%
 columns=2,
 columnsep=35pt, %
 options=-g -c -l -s config/indexstyle.ist]%
\DeclareRobustCommand{\getAutor}{Vorname Nachname}
 \hypersetup{pdfauthor={\getAutor}}
\DeclareRobustCommand{\AutorGenderSpecific}{Verfasser}%
\DeclareRobustCommand{\setAutor}[2][m]{%
 \ifthenelse{\equal{#1}{w}}
  {\renewcommand{\AutorGenderSpecific}{Verfasserin}}
  {\renewcommand{\AutorGenderSpecific}{Verfasser}}
 \ifthenelse{\equal{}{#2}}
  {}
  {\hypersetup{pdfauthor={#2}} 
   \renewcommand{\getAutor}{#2}}
}%
\DeclareRobustCommand{\getTitel}{Dies ist ein Titel zur Demonstration aus dem Template \zwicktex\xspace der FH Kufstein}
\hypersetup{pdftitle={\getTitel}}
\DeclareRobustCommand{\setTitel}[1]{%
 \ifthenelse{\equal{}{#1}}
  {}
  {\hypersetup{pdftitle={#1}} 
   \renewcommand{\getTitel}{#1}}
}%
\DeclareRobustCommand{\getThesis}{Diplomarbeit}
\DeclareRobustCommand{\setThesis}[1]{%
 \ifthenelse{\equal{}{#1}}
  {}
  {\renewcommand{\getThesis}{#1}}
}%
\DeclareRobustCommand{\getAkadGrad}{Master of Arts in Business (MA)}
 \hypersetup{pdfsubject={\getAkadGrad}}
\DeclareRobustCommand{\setAkadGrad}[1]{%
 \ifthenelse{\equal{}{#1}}
  {}
  {\hypersetup{pdfsubject={#1}}
   \renewcommand{\getAkadGrad}{#1}}
}%
\DeclareRobustCommand{\getMatrNr}{1234567890}
\DeclareRobustCommand{\setMatrNr}[1]{%
 \ifthenelse{\equal{}{#1}}
  {}
  {\renewcommand{\getMatrNr}{#1}}
}%
\DeclareRobustCommand{\BetreuerGenderSpecific}{Betreuer}
\DeclareRobustCommand{\getBetreuer}{Prof. Dr. rer. Knut \LaTeX}
\DeclareRobustCommand{\setBetreuer}[2][m]{%
 \ifthenelse{\equal{#1}{w}}
  {\renewcommand{\BetreuerGenderSpecific}{Betreuerin}}
  {\renewcommand{\BetreuerGenderSpecific}{Betreuer}}
 \ifthenelse{\equal{}{#2}}
  {}
  {\renewcommand{\getBetreuer}{#2}}
}%
\DeclareRobustCommand{\getStudiengang}{ERP-Systeme \& Geschäftsprozessmanagement BB}
\DeclareRobustCommand{\setStudiengang}[1]{%
 \ifthenelse{\equal{}{#1}}
  {}
  {\renewcommand{\getStudiengang}{#1}}
}%
\DeclareRobustCommand{\getDatum}{\today}
\DeclareRobustCommand{\setDatum}[1]{%
 \ifthenelse{\equal{}{#1}}
  {}
  {\renewcommand{\getDatum}{#1}}
}%
\DeclareRobustCommand{\getKeywords}{\getThesis, Fachhochschule Kufstein, LaTeX}
 \hypersetup{pdfkeywords={\getKeywords}}
\DeclareRobustCommand{\setKeywords}[1]{%
 \newcommand{\cacheThesis}{}
 \ifthenelse{\equal{}{#1}}
  {}
  {%
   \ifthenelse{\equal{\getThesis}{Diplomarbeit}} {} {\renewcommand{\cacheThesis}{\getThesis}}   
   \hypersetup{pdfkeywords={\cacheThesis, #1, FH Kufstein}} 
   \renewcommand{\getKeywords}{#1}}
}%
\DeclareRobustCommand{\myPrintIndex}{\printindex}
\ifthenelse{\boolean{zwicktex@noindex}}{\renewcommand{\myPrintIndex}{}}{}
\DeclareRobustCommand{\myPrintAbbrevList}{\printglossary[type=\acronymtype,style=mylistdotted,title=Abkürzungsverzeichnis,toctitle=Abkürzungsverzeichnis]}
\ifthenelse{\boolean{zwicktex@noabbrevlist}}{\renewcommand{\myPrintAbbrevList}{}}{}
\DeclareRobustCommand{\myPrintListOfLists}{\lstlistoflistings}
\ifthenelse{\boolean{zwicktex@nolistoflists}}{\renewcommand{\myPrintListOfLists}{}}{}
\DeclareRobustCommand{\myPrintListOfTables}{\listoftables}
\ifthenelse{\boolean{zwicktex@nolistoftables}}{\renewcommand{\myPrintListOfTables}{}}{}
\DeclareRobustCommand{\myPrintListOfFigures}{\listoffigures}
\ifthenelse{\boolean{zwicktex@nolistoffigures}}{\renewcommand{\myPrintListOfFigures}{}}{}
\newcommand{\Titelseite}{%
 \IfFileExists{config/titlepage.tex}%
  {\renewcommand*{\baselinestretch}{1.0}%
   \input{config/titlepage.tex}%
   \singlespacing%
  }%
  {\ClassWarning {ZwickTeX} {File config/titlepage.tex cannot be found! No title page generated}}%
}%
\DeclareRobustCommand{\Quellenverzeichnis}{}%
\renewcommand{\Quellenverzeichnis}[1]{%
 \ifthenelse{\equal{}{#1}}
  {\IfFileExists{zwicktexTestDB.bib}
   {\begingroup
     \singlespacing
      \bibliography{zwicktexTestDB}
     \endgroup}{\ClassWarning {ZwickTeX} {zwicktexTestDB.bib not found, and you didn´t mention another BibTeX database...}}%
  }%
  {\begingroup
    \singlespacing
    \bibliography{#1}
   \endgroup}%
}%
\newcommand{\Vorspann}{%
 \begingroup
  \pagenumbering{Roman}
  \setcounter{page}{2}
  \normalsize
  \tableofcontents
  \myPrintListOfFigures 	% 
  \myPrintListOfTables 	% 
  \myPrintListOfLists	% 
  \myPrintAbbrevList
 \endgroup
}% END-Vorspann
\newcommand{\Hauptteil}{%
 \clearpage
 \pagenumbering{arabic}
 \onehalfspacing
 \normalsize
}% END-Hauptteil
\newcommand{\Anhang}{%
 \clearpage
 \appendix 	% 
 \renewcommand*{\baselinestretch}{1.0}
 \makeatletter
  \setcounter{pagetemp}{\value{page}} % 
 \makeatother
}% END-Anhang
\AtEndDocument{%
\begingroup
 \singlespacing
 \ifthenelse{\boolean{zwicktex@noappendixtoc}}{}{\postappendix} 
 \setcounter{page}{\value{pagetemp}} % 
 \renewcommand*{\thepage}{\arabic{page}} % 
 \clearscrheadings
 \ihead[]{}
 \chead[]{}
 \ohead[]{}
 \ifoot[]{}
 \cfoot[]{}
 \setheadsepline{0pt}
 \begin{footnotesize}
  \myPrintIndex
 \end{footnotesize}
 \clearpage
\endgroup
}%END-AtEndDocument 
\RequirePackage{enumitem}
\setitemize{itemsep=0pt,parsep=0pt,topsep=0pt}
\RequirePackage{marginnote}
\renewcommand*{\marginfont}{\color{red}\scriptsize}
\newcommand*{\mnote}[1]{\marginnote{$\Lleftarrow$\raggedrightmarginnote{#1}}}
 \ifthenelse{\boolean{zwicktex@nomarginnotes}}{\renewcommand{\mnote}{}}{} 
