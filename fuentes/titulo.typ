



#set page(
  numbering: "i",
)



// Título
#align(center, text(17pt)[
  *Prueba de Typst*
])

#grid(
  columns: (1fr, 1fr),
  align(center)[
    Carlos E.~Tafur Egido \
    Artos Institute \
    #link("mailto:tung@artos.edu")
  ],
  align(center)[
    Dr. John Doe \
    Artos Institute \
    #link("mailto:doe@artos.edu")
  ]
)


#v(2cm)

// Abstract
#align(center)[
  #set par(justify: false)
  *Abstract* \
  #lorem(80)
]

#v(2cm)

#outline()

#pagebreak()


#set page(
  numbering: "1",
)



