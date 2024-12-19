

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


#import "@preview/codly:1.1.1": *
#import "@preview/codly-languages:0.1.1": *
#show: codly-init.with()
#codly(languages: codly-languages)










#outline()

// -------------------------------------------------------
= Introducción



```rust
pub fn main() {
    println!("Hello, world!");
}
```


#include("fuentes/introduccion.typ")







= _Hacks_

#include("fuentes/hacks.typ")








