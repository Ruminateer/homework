\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}
\LoadClass{article}

\RequirePackage[scale = 0.8]{geometry}
\RequirePackage{graphicx}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{listings}

\AtBeginDocument{
    \maketitle
    \begin{enumerate}
}
        
\AtEndDocument{
    \end{enumerate}
}
        
\lstset{
    basicstyle=\ttfamily,
    commentstyle=\color{OliveGreen},
    keywordstyle=\color{blue},
    stringstyle=\color{Brown},
    numberstyle=\ttfamily\small,
    numbers=left,
    frame=shadowbox,
    breaklines=true,
    tabsize=4,
}
