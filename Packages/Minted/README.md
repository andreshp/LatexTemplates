# Minted

Información sobre el paquete Minted. Se indica cómo utilizarlo junto a la plantilla básica.

## Introducción

Aunque el paquete viene con `texlive-full`, si has utlizado otra distribución puede que el paquete requiera una instalación previa. Para más información ver:

<http://www.ctan.org/tex-archive/macros/latex/contrib/minted>

## ¿Qué incluir en la plantilla?

Basta introducir el siguiente código antes de comenzar el documento.

~~~tex
%-----------------------------------------------------------------------------------------------------
%	CONFIGURACIÓN DE LA INCLUSIÓN DE CÓDIGO
%-----------------------------------------------------------------------------------------------------

% Paquetes para la insercción y el resaltado del código:
\usepackage[usenames,dvipsnames]{color} % Permite crear colores propios. Utilizado para el bg de Minted.
\usepackage{minted}                     % Insercción y resaltado de código con Minted.

\usemintedstyle{autumn}                      % Se elige el estilo para minted.
\definecolor{bg}{rgb}{0.95,0.95,0.95}        % Se define el color bg usado para bgcolor de Minted.
\renewcommand\listingscaption{Código}        % Se redefine el nombre dado a un bloque de código.
\renewcommand\listoflistingscaption{Códigos} % Se redefine el nombre dado a la lista de códigos.
~~~

## ¿Cómo utilizarlo?

Puedes introducir el código en un bloque `minted` como muestra el siguiente código. Como parámetros se pasan el color del fondo y el lenguaje a resaltar. Para introducir un título y una etiqueta se utiliza dentro de un bloque `listing`.

~~~Tex
\begin{listing}
    \caption{Estructura que representa una Página en Linux}
    \begin{minted}[bgcolor=bg]{c}
        #include <linux/mm_types.h>

        struct page {
            unsigned long flags;
            atomic_t _count;
            atomic_t _mapcount;
            unsigned long private;
            struct address_space *mapping;
            pgoff_t index;
            struct list_head lru;
            void *virtual;
        }
    \end{minted}
    \label{listing:page}
\end{listing}
~~~

Puedo referenciar el código como es habitual en Latex:

~~~Tex
Código \ref{listing:page}
~~~

Además, se puede utilizar en una única línea con la siguiente sintaxis:

~~~Tex
\mint[bgcolor=bg]{c}|struct page * alloc_pages(gfp_t gfp_mask, unsigned int order)|
~~~


## Otras funcionalidades

Puedes incluir el siguiente código en la sección ÍNDICE para mostrar una lista con los códigos del documento.

~~~Tex
\listoflistings      % Lista con los códigos. Borrar si se desea.
~~~
