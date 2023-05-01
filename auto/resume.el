(TeX-add-style-hook
 "resume"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("resumecls" "color")))
   (TeX-run-style-hooks
    "latex2e"
    "resume-common"
    "resumecls"
    "resumecls10")
   (LaTeX-add-bibliographies))
 :latex)

