(TeX-add-style-hook
 "moderncvstyleclassic"
 (lambda ()
   (TeX-run-style-hooks
    "lmodern")
   (LaTeX-add-lengths
    "quotewidth"
    "hintscolumnwidth"
    "separatorcolumnwidth"
    "maincolumnwidth"
    "doubleitemmaincolumnwidth"
    "listitemsymbolwidth"
    "listitemmaincolumnwidth"
    "listdoubleitemmaincolumnwidth"
    "makecvtitlenamewidth"
    "makecvtitledetailswidth"
    "makecvtitlepicturewidth"
    "baseletterheight"
    "cvitemwithcommentmainlength"
    "cvitemwithcommentcommentlength"))
 :latex)

