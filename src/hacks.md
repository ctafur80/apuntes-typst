



## _Hacks_

Creo que Typst tiene un fallo de diseño en la gestión de las etiquetas de
las ecuaciones. No es tan grave, pero sí que es molesto. En principio, la
única forma que se tiene de gestionar las etiquetas es activando la
numeración para todas las ecuaciones que se muestren. Esto es algo molesto y
hay quien prefiere que se numeren solo las ecuaciones a las que se hace
referencia. Para esto, se puede hacer lo que explican
[aquí][hack-eq-number], es decir,

[hack-eq-number]: https://forum.typst.app/t/how-to-conditionally-enable-equation-numbering-for-labeled-equations/977/14

```typst
#set math.equation(numbering: "(1)")
#show math.equation: it => {
  if it.block and not it.has("label") [
    #counter(math.equation).update(v => v - 1)
    #math.equation(it.body, block: true, numbering: none)#label("")
  ] else {
    it
  }  
}
```





