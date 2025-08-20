



## Introducción

Como alguien que se toma muy en serio la documentación sobre muchas de las
cosas que aprende, he estado durante bastante tiempo buscando un sustituto
de TeX para los textos con simbología matemática algo avanzada; sobretodo
uno que pueda producir salida en formato web ---principalmente, HTML y
CSS---, que considero que es mejor que el PDF.

Al no encontrar alternativas fuera de TeX (lo único que encontraba eran
formatos nuevos de TeX o reimplementaciones de LaTeX), traté de ver si se
podían extender las posibilidades de los generadores de sitios estáticos
(_static-site generators_ o SSGs), que normalmente se han usado para
documentación técnica que no requiera de gran complejidad tipográfica. Los
SSGs se basan casi siempre en textos hechos con algún lenguaje de marcado
ligero (_lightweight markup language_ o LML), y lo normal es que produzcan
su salida en formato web.

A este respecto quizás Pandoc sea una excepción. Aunque, tal y como comentan
en [su propia web][pandoc-web], este más que un SSG es un conversor
universal de formatos de documentación, como son DOCX, Markdown, HTML, PDF,
etc., vi que hay quien saca gran provecho de Pandoc y lo ha usado para crear
documentos de matemáticas.

[pandoc-web]: https://pandoc.org/

De entre mi documentación, la que no requiere de simbología matemática
avanzada la llevo haciendo desde hace ya bastante tiempo en Markdown con
Pandoc, así que esta transición me resultaría bastante natural. Lo único es
que la realidad no fue tan bonita como imaginaba:

- De entre los lenguajes que admite Pandoc, el que cuenta con más
  posibilidades para extenderlo para textos de matemáticas es el "sabor" de
  Pandoc de Markdown[^markdown-sabores], o, en todo caso, Djot, que es casi
  como el anterior. Es un lenguaje que para ciertas cosas parece muy poco
  expresivo o "rico".
- Aunque se pueda usar código TeX para las partes de simbología matemática,
  hay problemas con los paquetes (_packages_), TKTK.
- TKTK

[^markdown-sabores]: Al hablar del LML Markdown, hay que tener en cuenta la
  anarquía que ha existido siempre a este respecto; aunque esto no ha
  impedido que sea el LML con mayor aceptación.

  Markdown fue creado en 2004 por John Gruber, con colaboración de Aaron
  Schwartz. Por ese entonces, ya existían otros LMLs que, como proyectos,
  parecían más serios, como AsciiDoc y reStructuredText. Digo que son más
  serios porque a Gruber se le ha criticado por no haber hecho nunca una
  especificación formal de Markdown. Como todo lenguaje, es difícil que no
  cuente en sus inicios con ambigüedades pero Gruber, por lo que parece,
  nunca se tomó muy en serio a su lenguaje. Cuando se le preguntaba sobre
  las ambigüedades o problemas que se presentaban al usar Markdown, Gruber
  respondía que bastaba con consultar cómo estaba implementado en el código
  del parseador (_parser_).

  Debido a esto, y a que Markdown de serie es muy básico, es decir, muy poco
  expresivo, fueron surgiendo implementaciones alternativas de Markdown. A
  estas las suelen llamar los "sabores" (_flavors_) de Markdown. En algunas
  se podían añadir notas a pie de página, simbología matemática TeX, etc.
  Son de destacar Markdown-it y la de Pandoc.

  Para tratar de poner orden en este caos, John MacFarlane, el creador de
  Pandoc, se tomó la molestia de hacer una especificación de un Markdown
  básico, al que llamó [Commonmark][]. Muchos de los parseadores de Markdown
  actualmente se basan en el estándar Commonmark.

  Posteriormente, MacFarlane trató de rehacer un Markdown mejorado, al que
  llamó [Djot][]. En realidad, tampoco me parece la panacea.

[Commonmark]: https://commonmark.org/
[Djot]: https://djot.net/

<!-- Ventajas frente a Markdown de Pandoc. Al fin y al cabo, como extensión
de Markdown que es, se pierden ciertas ayudas como el resaltado de sintaxis
para ciertas cosas, etc. -->

Finalmente, sobre 2020 unos desarrolladores alemanes comenzaron a crear
Typst, algo similar a TeX pero adaptado a los tiempos modernos. El lenguaje
que usa se llama también Typst y combina en cierto modo ligereza y
expresividad, pues es adaptable en ciertos momentos (_syntactic sugar_
TKTK).

<!-- Ventajas respecto a TeX y sus formatos: l lenguaje es más ligero en
ciertas ocasiones, tienen previsto que tenga salida en formato web y que no
sea algo supercomplicado, crear paquetes y plantillas es muy fácil ya que su
lenguaje parece mucho mejor que TeX. -->

La funcionalidad (_feature_) que espero con más ansia del _software_ Typst
es la posibilidad de producir la salida en formato web; aunque esta aún no
se ha logrado implementar del todo.

Debe tener en cuenta que el estado actual de desarrollo de Typst es algo
incipiente ---actualmente, la versión 0.13---, pero TKTK.

Una buena explicación introductoria podría ser [este
vídeo][typst-in-100-secs] de Sylvan Franklin.

[typst-in-100-secs]: https://www.youtube.com/watch?v=kI2e0o3sIVM



---


Existe una cuestión que subyace estas dos filosofía: ¿Deberían ser
programables los documentos? TKTK.


---


Aunque me guste mucho Typst, no termino de desechar la idea de que algún día
pueda haber un SSG con un lenguaje con el que se puedan crear textos de
matemáticas de gran calidad. En realidad, sería algo bastante fácil de
conseguir, pues no se trata más que de hacer un lenguaje que implemente de
forma "ligera" algunos de los elementos HTML. Con esto y las plantillas CSS
que cree, podría servir perfectamente.

El lenguaje Pug trató de hacer esto pero abarcando demasiados de los
elementos de HTML, ya que no era solo para documentos sino para webs de
cualquier tipo.

Quizás podría llegar ese día si CSS se sigue ampliando y ponen más foco en
la creación de documentos. Por ejemplo, hacer tablas de contenidos
automáticas, etc.

Existen proyectos para hacer algo más completo que Markdown a partir de
este. Por ejemplo, Quarkdown, aunque esto seguiría la filosofía de TeX y
Typst: documentos programables.




