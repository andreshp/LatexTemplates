(TeX-add-style-hook
 "template"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("parskip" "parfill")))
   (TeX-run-style-hooks
    "microtype"
    "fancyhdr"
    "lastpage"
    "calc"
    "extramarks"
    "geometry"
    "parskip"
    "float"
    "hyperref")
   (TeX-add-symbols
    "pageWord"
    "ofWord"
    "rheadtext"))
 :latex)

