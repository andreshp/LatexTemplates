# Creación de tablas

El entorno `tabular` nos permite crear tablas en Latex. Por ejemplo, el siguiente código

~~~tex
\begin{tabular}{cc}
    Ciudad & Código Postal \\
    La Zubia & 18140 \\
\end{tabular}
~~~

genera una tabla como la siguiente

| Ciudad   | Código Postal |
|--------------------------|
| La Zubia | 18140         |

Para introducir una columna en la tabla hay que indicarlo tras `\begin{tabular}`. En este caso, `{cc}` significa 2 columnas centradas. Si se deseasen que estuviesen. 
