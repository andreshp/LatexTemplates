(TeX-add-style-hook
 "CurriculumVitae-AndresHerreraPoyatos"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("moderncv" "10pt" "a4paper" "sans")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("geometry" "left=2cm" "right=2cm" "top=1.5cm" "bottom=2.5cm")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "moderncv"
    "moderncv10"
    "inputenc"
    "geometry"
    "comment"
    "array"
    "multicol"
    "multirow"
    "booktabs"
    "float"
    "tasks")
   (TeX-add-symbols
    "newline")
   (LaTeX-add-labels
    "sec:education")
   (LaTeX-add-array-newcolumntypes
    "L"
    "C"
    "R"))
 :latex)

