# Bibliografía en LaTeX

Existen varias formas de introducir bibliografía en Latex. Personalmente, prefiero mantener la bibliografía separada el .tex. Para ello hay que utilizar un archivo .bib en el que se incluyen las referencias con la información correspondiente. En esta carpeta tenéis un ejemplo en [references.bib](https://github.com/andreshp/LatexTemplates/blob/master/Spanish/PaquetesLatex/Bibliografia/references.bib).

Introducir la bibliografía en el pdf es muy sencillo. Simplemente necesitas incluir varios paquetes e indicar cuál es tu fichero .bib:


~~~tex
%-----------------------------------------------------------------------------------------------------
%	BIBLIOGRAFÍA
%-----------------------------------------------------------------------------------------------------

\usepackage[backend=bibtex, style=numeric]{biblatex}
\usepackage{csquotes}                                  % Evita problemas con los apóstrofes, etc.

\addbibresource{references.bib}                        % Toma la bibliografía del archivo dado.
~~~

Utilizo el paquete biblatex para presentar la bibliografía. Es muy completo y, además, si tenéis tiempo libre, presenta una alta capacidad de configuración. Backend es el compilador utilizado para la bibliografía. Bibtex es el más recomendado habitualmente. En Stackexchange hay (una pregunta)[http://tex.stackexchange.com/questions/25701/bibtex-vs-biber-and-biblatex-vs-natbib] en la que se comparan los diferentes paquetes y backends. El estilo escogido es numeric. Podéis encontrar más información en la documentación oficial de [Biblatex](https://www.ctan.org/pkg/biblatex) o, por ejemplo, en [esta web](http://www.khirevich.com/latex/bibliography/).

Para imprimir la bibliografía en el pdf basta utilizar el siguiente comando en el lugar donde se quiera posicionar esta:

~~~tex
%-----------------------------------------------------------------------------------------------------
%	SECCIÓN X: REFERENCIAS
%-----------------------------------------------------------------------------------------------------

\printbibliography
~~~

En el archivo .bib tienes que incluir estructuras como la que sigue:

~~~tex
@article{map-reduce,
	author    = "J. Dean, and S. Ghemawat",
	title     = "MapReduce: simplified data processing on large clusters",
	journal   = "Communications of the ACM",
	year      = "2008",
	vol       = "51",
	pages     = "107--113"
}
~~~

@article indica que la referencia se corresponde con un artículo. La primera palabra es el nombre que se le da a la referencia. Se utiliza para citarla durante el texto con el comando `\cite{map-reduce}`. El resto de entradas conforman la información de la referencia.
