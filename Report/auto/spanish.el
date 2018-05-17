(TeX-add-style-hook
 "spanish"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "spanish" "es-noquoting" "es-tabla" "es-lcroman") ("inputenc" "utf8")))
   (TeX-run-style-hooks
    "babel"
    "inputenc"))
 :latex)

