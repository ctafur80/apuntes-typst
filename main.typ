

// Preámbulo
// -------------------------------------------------------
#set text(
  lang: "es",
  fill: rgb("ccc9d6"),
)

#set page(
  paper: "a5",
  margin: (x: 0.2cm, y: 0.4cm),
  numbering: "1",
  fill: rgb("34324a"),
)

#set par(
  // first-line-indent: 1em,
  // justify: true,
  leading: 0.52em,
)

#set heading(numbering: "1.")


// Numera automáticamente las ecuaciones referenciadas
#set math.equation(numbering: "(1)")
#show math.equation: it => {
  if it.block and not it.has("label") [
#counter(math.equation).update(v => v - 1)
#math.equation(it.body, block: true, numbering: none)#label("")
  ] else {
    it
  }
}











#outline()

// -------------------------------------------------------
= Introducción

Desde hace tiempo, vengo pensando en Typst como una alternativa moderna a
TeX y LaTeX. He probado varios lenguajes pero no terminaba de convencerme
ninguno, pues, en la mayoría de los casos, se trataba de lenguajes con poca
expresividad y recursos.

Muchos de estos son lo que se suele llamar lenguajes de marcado ligero, como
es el caso del famoso Markdown o de otros con algo más de riqueza, como
pueden ser reStructuredText o Djot. En cualquier caso, estos lenguajes
tienen bastantes limitaciones en cuanto a las opciones que proporcionan.

No digo que esto tenga que ser malo para todo el mundo. Simplemente, lo es
para mí, que deseo hacer un uso algo intensivo de la tipografía TKTK.

Hay quien no requiere de funcionalidades avanzadas en este sentido. Por
ejemplo, alguien que escriba un libro de historia.

También, hay quien cree que un documento no debería ser programable. TKTK.






= _Hacks_

Creo que Typst tiene un fallo de diseño en la gestión de las etiquetas de
las ecuaciones. No es tan grave, pero sí que es molesto. En principio, la
única forma que se tiene de gestionar las etiquetas es activando la
numeración para todas las ecuaciones que se muestren. Esto es algo molesto y
hay quien prefiere que se numeren solo las ecuaciones a las que se hace
referencia. Para esto, se puede hacer lo que explican en
#link("https://forum.typst.app/t/how-to-conditionally-enable-equation-numbering-for-labeled-equations/977/14")[este
enlace].







