%
% University of Science and Technology of China 
% Experiment Report Template for LaTeX Users
%
%   Version
%       Beta

\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{ustcreport}[USTC Experiment Report Template by Joey@USTC]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions

\LoadClass{article}


\RequirePackage[
	left=2.2cm,
	right=2.2cm,
	top=5.5cm,
	bottom=2.1cm
	]{geometry}

\RequirePackage{tikz}
\usetikzlibrary{calc}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{everypage}
\RequirePackage{titlesec}

%\titleformat{\section}[shape]{format}{label}{sep}{before}[after]
\titleformat{\section}[display]{}{}{0pt}{\bfseries}
%\titlespacing*{command}{left}{before-sep}{after-sep}[right-sep]
\titlespacing{\section}{0pt}{0pt}{3pt}


\newcommand{\chuhao}    {\fontsize{42pt}   {\baselineskip}\selectfont}
\newcommand{\xiaochu}   {\fontsize{36pt}   {\baselineskip}\selectfont}
\newcommand{\xiaochuhao}{\fontsize{36pt}   {\baselineskip}\selectfont}
\newcommand{\yihao}     {\fontsize{28pt}   {\baselineskip}\selectfont}
\newcommand{\erhao}     {\fontsize{21pt}   {\baselineskip}\selectfont}
\newcommand{\xiaoer}    {\fontsize{18pt}   {\baselineskip}\selectfont}
\newcommand{\xiaoerhao} {\fontsize{18pt}   {\baselineskip}\selectfont}
\newcommand{\sanhao}    {\fontsize{15.75pt}{\baselineskip}\selectfont}
\newcommand{\xiaosan}   {\fontsize{15pt}   {\baselineskip}\selectfont}
\newcommand{\xiaosanhao}{\fontsize{15pt}   {\baselineskip}\selectfont}
\newcommand{\sihao}     {\fontsize{14pt}   {\baselineskip}\selectfont}
\newcommand{\xiaosi}    {\fontsize{12pt}   {\baselineskip}\selectfont}
\newcommand{\xiaosihao} {\fontsize{12pt}   {\baselineskip}\selectfont}
\newcommand{\wuhao}     {\fontsize{10.5pt} {\baselineskip}\selectfont}
\newcommand{\xiaowu}    {\fontsize{9pt}    {\baselineskip}\selectfont}
\newcommand{\xiaowuhao} {\fontsize{9pt}    {\baselineskip}\selectfont}
\newcommand{\liuhao}    {\fontsize{7.875pt}{\baselineskip}\selectfont}
\newcommand{\qihao}     {\fontsize{5.25pt} {\baselineskip}\selectfont}


%Define new commands
\def\ustc@define@term#1{
  \expandafter\gdef\csname #1\endcsname##1{%
    \expandafter\gdef\csname ustc@#1\endcsname{##1}}
  \csname #1\endcsname{}}

\ustc@define@term{school}
\ustc@define@term{year}
\ustc@define@term{name}
\ustc@define@term{date}
\ustc@define@term{No}
\ustc@define@term{score}
\ustc@define@term{title}
\ustc@define@term{goal}


\newcommand{\ustc@report@pagelayout@first}
{\begin{tikzpicture}[x=1mm, y=1mm, remember picture,overlay,shift=(current page.north west)]
  	\node (b) [fill opacity=0] at (35,-48) {\wuhao 实验目的:}; %实验目的
  	\node[right of=b, right] {\wuhao \ustc@goal};
 \end{tikzpicture}}
  
  
  
\newcommand{\ustc@report@pagelayout@behind}
{\begin{tikzpicture}[x=1mm, y=1mm, remember picture,overlay,shift=(current page.north west)]
  \draw[thin] ($(current page.north west)+(67.5,-21)$) -- ($(current page.north east)+(-67.5,-21)$);
  \draw[thin] ($(current page.north west)+(67.5,-20.3)$) -- ($(current page.north east)+(-67.5,-20.3)$)node[above, midway] {\erhao \textbf{实~~~~验~~~~报~~~~告}};
 
  \node at ($(current page.north east)+(-55,-17)$) {\xiaowuhao 评分:}; %评分
  
  \draw[very thick] ($(current page.north west)+(22,-35)$) -- ($(current page.north east)+(-22,-35)$); 
  
  \draw[thin] ($(current page.north west)+(22,-33)$) -- ($(current page.north west)+(42,-33)$) node[above, midway] {\wuhao \ustc@school}; %系
  \node at (44.3,-30.5) {\wuhao 系}; %系
  \draw[thin] ($(current page.north west)+(46.4,-33)$) -- ($(current page.north west)+(64,-33)$) node[above, midway] {\wuhao \ustc@year}; %级
  \node at (67,-30.5) {\wuhao 级}; %级
  \node at (76,-30) {\xiaosihao 姓名}; %姓名
  \draw[thin] ($(current page.north west)+(80.7,-33)$) -- ($(current page.north west)+(113.8,-33)$) node[above, midway] {\xiaosihao \ustc@name}; %姓名
  \node at (120,-30) {\xiaosihao 日期}; %日期
  \draw[thin] ($(current page.north west)+(126,-33)$) -- ($(current page.north west)+(154.7,-33)$) node[above, midway] {\xiaosihao \ustc@date}; %日期
  \node at (160,-30) {\xiaosihao No.}; %学号
  \draw[thin] ($(current page.north west)+(164.7,-33)$) -- ($(current page.north east)+(-22,-33)$)node[above, midway] {\xiaosihao \ustc@No}; %学号
  
  \node (a) at (35,-41) {\wuhao 实验题目:}; %实验题目
  \node[right of=a, right] {\wuhao \ustc@title};
  \node at (35,-48) {\wuhao 实验目的:}; %实验题目
  
  \draw[very thick] ($(current page.south west)+(22,17.5)$) -- ($(current page.south east)+(-22,17.5)$);
  \node at ($(current page.south west)+(50,14)$) {\wuhao 1101-145 ~~2014. 12. 2500};
  \end{tikzpicture}}
  

\AddThispageHook{\ustc@report@pagelayout@first}
\AddEverypageHook{\ustc@report@pagelayout@behind}


\AtBeginDocument{\pagestyle{empty}}

%
% End of ustcreport.cls


