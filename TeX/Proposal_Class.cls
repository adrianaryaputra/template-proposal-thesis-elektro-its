% Caution!

% untuk mengedit dokumen, cukup edit file pada bagian :
% /src/chapter
% /src/citation
% /src/image

% jangan edit bagian dibawah ini kecuali anda tahu apa yang anda perbuat.

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{Proposal_Class}

\LoadClass[12pt,a4paper]{book}

% \RequirePackage{showframe}

\usepackage{ragged2e}
\RequirePackage{calc}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{tikzpagenodes}
\RequirePackage{mathptmx} % times new roman
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{tabularx}
\RequirePackage{multicol}
\RequirePackage{indentfirst} % auto ident on first paragraph
\RequirePackage{fancyhdr}
\RequirePackage{caption}
\RequirePackage{subcaption}

\setlength{\hoffset}{-1in}
\setlength{\evensidemargin}{30mm}
\setlength{\oddsidemargin}{40mm}
\setlength{\textwidth}{\paperwidth - \evensidemargin - \oddsidemargin}
\setlength{\marginparsep}{\paperwidth}
\setlength{\marginparwidth}{0mm}
\setlength{\voffset}{-1in}
\setlength{\topmargin}{30mm - \headheight - \headsep}
\setlength{\headheight}{12pt}
\setlength{\headsep}{5mm}
\setlength{\textheight}{\paperheight - 30mm - 30mm}
\setlength{\footskip}{10mm + 1em}
\setlength{\parindent}{10mm}
\setlength{\itemsep}{1em}


\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\renewcommand{\contentsname}{Daftar Isi}
\renewcommand{\listfigurename}{Daftar Gambar}
\renewcommand{\listtablename}{Daftar Tabel}
\renewcommand{\figurename}{Gambar}
\renewcommand{\tablename}{Tabel}
\renewcommand{\bibname}{Daftar Pustaka}


\titleformat{\chapter}[display]
    {\normalsize \normalsize \bfseries}
    {\centering \large \MakeUppercase BAB \thechapter }{-.5em}{\large \centering}
\titlespacing*{\chapter}{0pt}{-20pt}{0pt}

\titleformat{\section}
    {\normalsize \normalsize \bfseries \color{black}}
    {\normalsize \thesection }{1em}{}
\titlespacing*{\section}{0mm}{1em}{0em}

\titleformat{\subsection}
    {\normalsize \normalsize \color{black}}
    {\normalsize \thesubsection }{1em}{}
\titlespacing*{\subsection}{0mm}{1em}{0em}


\titlecontents{chapter}
    [0em] %
    {\bfseries}
    {BAB \thecontentslabel: \hspace{.5em}}%numbered chapters
    {}%numberless chapter
    {\hfill\contentspage}

\titlecontents{section}
    [1em]
    {\vspace{0pt}}%
    {\thecontentslabel.\enspace}%numbered sections
    {}%numberless section
    {\titlerule*[0.5pc]{.}\contentspage}%

\titlecontents{subsection}
    [2em]
    {\vspace{0pt}}%
    {\thecontentslabel.\enspace}%numbered sections
    {}%numberless section
    {\titlerule*[0.5pc]{.}\contentspage}%


\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE,RO]{}
\fancyhead[RE,LO]{}
\fancyfoot[CE,CO]{\thepage}
\fancyfoot[LE,RO]{}


\newenvironment{f_enumerate}{
\begin{enumerate}
    \setlength{\itemsep}{0em}
    \setlength{\parskip}{0pt}
    \setlength{\parsep}{0pt}
}{\end{enumerate}}


\newenvironment{f_itemize}{
\begin{itemize}
    \setlength{\itemsep}{0pt}
    \setlength{\parskip}{0pt}
    \setlength{\parsep}{0pt}
}{\end{itemize}} 


\newcommand{\refgbr}[1]{Gambar \ref{#1}}

\makeatletter
    \def\cleardoublepage{\clearpage%
        \if@twoside
            \ifodd\c@page\else
                \vspace*{\fill}
                \hfill
                \begin{center}
                    \textit{-- Halaman ini sengaja dikosongkan oleh penulis --}
                \end{center}
                \vspace{\fill}
                \thispagestyle{empty}
                \newpage
                \if@twocolumn\hbox{}\newpage\fi
            \fi
        \fi
    }
\makeatother