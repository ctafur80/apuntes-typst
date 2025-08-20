




## Otros

```typst
#rect(fill: aqua.lighten(40%))[#text(fill: red)[HOLA ESTO]]
```

Ahora no.

```typst
#show table.cell.where(y: 0): strong

#table(
  align: right,
  columns: 5 * (1fr,),

  table.header([uno], [dos], [tres], [cuatro], [cinco]),

  // Contenido de la tabla
  ..for x in range(1, 10) {
    for y in range(1, 6) {
      (str(x*y),)
    }
  }
)
```




Algo que es muy útil es consultar, en la documentación oficial, los símbolos
existentes. Se pueden consultar
[aquí](https://typst.app/docs/reference/symbols/sym/).






