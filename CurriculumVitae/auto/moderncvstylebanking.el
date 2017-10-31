(TeX-add-style-hook
 "moderncvstylebanking"
 (lambda ()
   (TeX-run-style-hooks
    "tgpagella")
   (TeX-add-symbols
    '("addtomaketitle" ["argument"] 1)
    "maketitlesymbol"
    "flushmaketitle"
    "subsectionfill")
   (LaTeX-add-lengths
    "maketitlewidth"
    "maketitleboxwidth"
    "quotewidth"
    "hintscolumnwidth"
    "separatorcolumnwidth"
    "maincolumnwidth"
    "doubleitemcolumnwidth"
    "listitemsymbolwidth"
    "listitemmaincolumnwidth"
    "listdoubleitemmaincolumnwidth"
    "cvitemwithcommentmainlength"
    "cvitemwithcommentcommentlength")
   (LaTeX-add-saveboxes
    "maketitlebox"
    "maketitletempbox"))
 :latex)

