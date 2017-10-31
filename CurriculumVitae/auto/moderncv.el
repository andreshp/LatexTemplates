(TeX-add-style-hook
 "moderncv"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fontenc" "T1") ("hyperref" "unicode")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "etoolbox"
    "ifthen"
    "xcolor"
    "fontenc"
    "lmodern"
    "url"
    "hyperref"
    "graphicx"
    "fancyhdr"
    "calc"
    "xargs"
    "microtype"
    "moderncvcompatibility"
    "suffix"
    "tweaklist")
   (TeX-add-symbols
    '("enclosure" ["argument"] 1)
    '("emaillink" ["argument"] 1)
    '("httplink" ["argument"] 1)
    '("link" ["argument"] 1)
    '("cvitemwithcomment" ["argument"] 3)
    '("cventry" ["argument"] 6)
    '("cvpublication" ["argument"] 4)
    '("cvlistdoubleitem" ["argument"] 2)
    '("cvlistitem" ["argument"] 1)
    '("cvdoubleitem" ["argument"] 4)
    '("cvitem" ["argument"] 2)
    '("closing" 1)
    '("opening" 1)
    '("recipient" 2)
    '("descriptionlabel" 1)
    '("bibliographyhead" 1)
    '("subsection" 1)
    '("section" 1)
    '("hintstyle" 1)
    '("subsectionstyle" 1)
    '("sectionstyle" 1)
    '("quotestyle" 1)
    '("addressstyle" 1)
    '("titlestyle" 1)
    '("namestyle" 1)
    '("quote" 1)
    '("extrainfo" 1)
    '("moderncvcolor" 1)
    '("moderncvstyle" 1)
    '("homepage" 2)
    '("email" 1)
    '("fax" 1)
    '("phone" 1)
    '("mobile" 1)
    '("address" 2)
    '("familyname" 1)
    '("firstname" 1)
    '("marvosymbol" 1)
    "nopagenumbers"
    "listitemsymbol"
    "addresssymbol"
    "mobilesymbol"
    "phonesymbol"
    "faxsymbol"
    "emailsymbol"
    "homepagesymbol"
    "refname"
    "enclname"
    "makefooter"
    "recomputelengths"
    "namefont"
    "titlefont"
    "addressfont"
    "quotefont"
    "sectionfont"
    "subsectionfont"
    "hintfont"
    "recomputecvlengths"
    "makenewline"
    "makecvtitle"
    "makecvfooter"
    "section"
    "subsection"
    "bibliographyitemlabel"
    "newblock"
    "recomputeletterlengths"
    "makelettertitle"
    "makeletterfooter"
    "makeletterclosing"
    "today")
   (LaTeX-add-labels
    "lastpage")
   (LaTeX-add-environments
    '("thebibliography" 1))
   (LaTeX-add-lengths
    "pagenumberwidth"
    "bibindent")
   (LaTeX-add-xcolor-definecolors
    "color2"
    "color0"
    "color1"
    "color3"))
 :latex)

