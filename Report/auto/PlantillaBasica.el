(TeX-add-style-hook
 "PlantillaBasica"
 (lambda ()
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "template"
    "lipsum"
    "title1")
   (TeX-add-symbols
    "doctitle"
    "docsubtitle"
    "subject"
    "docauthor"
    "docaddress"
    "docemail"
    "docabstract"))
 :latex)

