# Matemáticas

Utilidades y paquetes necesarios para redactar matemáticas en Latex.

## Plantilla

En este directorio puedes encontrar la plantilla básica adaptada para escribir matemáticas junto con algunos ejemplos. En la siguiente sección explico qué paquetes y códigos se necesitan.

## Paquetes a introducir

Yo normalmente introduzco los siguientes paquetes en la plantilla.

~~~Tex
%----------------------------------------------------------------------------------------
%	MATEMÁTICAS
%----------------------------------------------------------------------------------------

% Paquetes para matemáticas:                     
\usepackage{amsmath, amsthm, amssymb, amsfonts, amscd} % Teoremas, fuentes y símbolos.
~~~

Estos paquetes se explican a continuación.

- **amsmath.** Mejora el tratamiento de las ecuaciones en Latex.

- **amssymb.** Introduce símbolos matemáticos.

- **amsfonts.** Introduce fuentes para matemáticas (mathbb por ejemplo).

- **amscd.** Permite realizar diagramas rectangulares.

- **amsthm.** Permite definir estructuras como **Teorema**, **Proposición** o **Definición**. El siguiente código configura estas estructuras:

~~~Tex
% Nuevo estilo para definiciones
\newtheoremstyle{definition-style} % Nombre del estilo
  {5pt}                % Espacio por encima
  {0pt}                % Espacio por debajo
  {}                   % Fuente del cuerpo
  {}                   % Identación: vacío= sin identación, \parindent = identación del parráfo
  {\bf}                % Fuente para la cabecera
  {.}                  % Puntuación tras la cabecera
  {.5em}               % Espacio tras la cabecera: { } = espacio usal entre palabras, \newline = nueva línea
  {}                   % Especificación de la cabecera (si se deja vaía implica 'normal')

% Nuevo estilo para teoremas
\newtheoremstyle{theorem-style} % Nombre del estilo
  {5pt}                % Espacio por encima
  {0pt}                % Espacio por debajo
  {\itshape}           % Fuente del cuerpo
  {}                   % Identación: vacío= sin identación, \parindent = identación del parráfo
  {\bf}                % Fuente para la cabecera
  {.}                  % Puntuación tras la cabecera
  {.5em}               % Espacio tras la cabecera: { } = espacio usal entre palabras, \newline = nueva línea
  {}                   % Especificación de la cabecera (si se deja vaía implica 'normal')

% Nuevo estilo para ejemplos y ejercicios
\newtheoremstyle{example-style} % Nombre del estilo
  {5pt}                % Espacio por encima
  {0pt}                % Espacio por debajo
  {}                   % Fuente del cuerpo
  {}                   % Identación: vacío= sin identación, \parindent = identación del parráfo
  {\scshape}                % Fuente para la cabecera
  {:}                  % Puntuación tras la cabecera
  {.5em}               % Espacio tras la cabecera: { } = espacio usal entre palabras, \newline = nueva línea
  {}                   % Especificación de la cabecera (si se deja vaía implica 'normal')

% Teoremas:
\theoremstyle{theorem-style}  % Otras posibilidades: plain (por defecto), definition, remark
\newtheorem{theorem}{Teorema}[section]  % [section] indica que el contador se reinicia cada sección
\newtheorem{corollary}[theorem]{Corolario} % [theorem] indica que comparte el contador con theorem
\newtheorem{lemma}[theorem]{Lema}
\newtheorem{proposition}[theorem]{Proposición}

% Definiciones, notas, conjeturas
\theoremstyle{definition-style}
\newtheorem{definition}{Definición}[section]
\newtheorem{conjecture}{Conjetura}[section]
\newtheorem*{note}{Nota} % * indica que no tiene contador

% Ejemplos, ejercicios
\theoremstyle{example-style}
\newtheorem{example}{Ejemplo}[section]
\newtheorem{exercise}{Ejercicio}[section]
~~~
