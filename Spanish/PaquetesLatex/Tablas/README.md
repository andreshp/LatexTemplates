# Creación de tablas

El entorno `tabular` nos permite crear tablas en Latex. Por ejemplo, el siguiente código

~~~tex
\begin{tabular}{ll}
    Ciudad & Código Postal \\
    La Zubia & 18140 \\
\end{tabular}
~~~

genera una tabla como la siguiente

| Ciudad   | Código Postal |
|----------|---------------|
| La Zubia | 18140         |

Para introducir una columna en la tabla hay que indicarlo tras `\begin{tabular}`. En este caso, `{ll}` significa 2 columnas alineadas a la izquierda. Si se desea que una columna esté centrada basta usar `r` en lugar de `l`. Por otro lado, si se pretende que la columna esté alineada hay que utilizar `c`.

La tabla generada en Latex con el código anterior no tiene barras. Para poner barras horizontales usamos el comando `\hline`, obteniendo el siguiente código:

~~~tex
\begin{tabular}{ll}
    \hline
    Ciudad & Código Postal \\
    \hline
    La Zubia & 18140 \\
    \hline
\end{tabular}
~~~

Las barras verticales se indican a la vez que el número y tipo de columnas. Si se desea que haya una barra vertical entre las dos columnas hay que introducir el carácter `|` entre `l` y `l`. El siguiente código generaría una tabla con todas las columnas verticales.

~~~tex
\begin{tabular}{|l|l|}
    \hline
    Ciudad & Código Postal \\
    \hline
    La Zubia & 18140 \\
    \hline
\end{tabular}
~~~

El problema reside en que Latex calcula la anchura de cada columna en función de lo que contengan las celdas de ésta, solo dejando una línea de texto por celda. Para poder asignar la anchura que queramos a cada columna tenemos que definir nuevos tipos de columnas. Basta introducir el siguiente código en la plantilla:

~~~tex
%-----------------------------------------------------------------------------------------------------
% CONFIGURACIÓN DE TABLAS
%-----------------------------------------------------------------------------------------------------

\usepackage{array}

\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
~~~

Hemos definido un tipo columna alineada a la izquierda (`L`), columna centrada (`C`) y columna alineada a la derecha (`R`). Estos tipos se usan como sigue:

~~~tex
\begin{tabular}{|L{3cm}|L{4cm}|}
    \hline
    Ciudad & Código Postal \\
    \hline
    La Zubia & 18140 \\
    \hline
\end{tabular}
~~~

El valor dado entre {} tras el tipo de la columna indica la anchura de esta. Es mejor utilizar anchuras relativas, multiplicando \textwidth por un valor real entre 0 y 1. De esta forma obtenemos la siguiente tabla:

~~~tex
\begin{tabular}{|L{0.25\textwidth}|L{0.25\textwidth}|}
    \hline
    Ciudad & Código Postal \\
    \hline
    La Zubia & 18140 \\
    \hline
\end{tabular}
~~~

Si en una celta el texto sobrepasa la anchura asignada, entonces se introduce una nueva línea en la celda de forma automática. Por tanto, este método para crear tablas es mucho más cómo y permite una mayor configuración.
