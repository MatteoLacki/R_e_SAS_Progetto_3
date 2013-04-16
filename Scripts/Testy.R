test <- 
  function(
    input1,
    input2,
    ...
  )
  {
    return(    input1+input2)    
  }

test(1,3)

{
  \setkeys{Gin}{width=1.0\textwidth}
  \begin{figure}
  \centering
  <<fig=true>>==        % sweave understands that it will be a figure      
  source("./Scripts/distance_analysis.R")  
  print(distance)
  @
  \caption{Dependence between arrival time and distance to office.}
  \end{figure}
}


\begin{landscape}

\thispagestyle{empty}
\noindent

\end{landscape}