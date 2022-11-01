\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2022/09/11]

\newif\ifenumerate
\DeclareOption{enumerate}{\enumeratetrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\RequirePackage[scale = 0.8]{geometry}
\RequirePackage{graphicx}
\RequirePackage[svgnames]{xcolor}
\RequirePackage{listings}
\RequirePackage{amsmath}
\RequirePackage[shortlabels]{enumitem}

\AtBeginDocument{
    \maketitle
    \ifenumerate
    \begin{enumerate}
    \fi
}
        
\AtEndDocument{
    \ifenumerate
    \end{enumerate}
    \fi
}
        
\lstset{
    basicstyle=\ttfamily,
    commentstyle=\color{Green},
    keywordstyle=\color{Blue},
    stringstyle=\color{Brown},
    numberstyle=\ttfamily\small,
    numbers=left,
    frame=shadowbox,
    breaklines=true,
    tabsize=4,
    showstringspaces=false,
}

\lstdefinelanguage{diff}{
    morecomment=[f][\color{Blue}]{@@},
    morecomment=[f][\color{Green}]{+},
    morecomment=[f][\color{Red}]{-},
    morecomment=[f][\color{Blue}]{+++\ },
    morecomment=[f][\color{Blue}]{---\ },
}
