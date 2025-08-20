
#import "@local/ctafur-maths-template:0.1.0": *



== Entornos tipo teorema

En realidad, no solo es para los entornos de tipo teorema, sino que serviría
para cualquier tipo.

Aunque existen _plug-ins_ que parece que lo hacen muy bien, Typst es tan
bueno que es muy fácil crearlos por uno mismo. Puede ver cómo se crean en
algunos ejemplos que ponen en la entrada
#link("https://typst.app/docs/reference/introspection/counter/")[_counter_].
Por ejemplo, en la sección _How to step_.




== Código en el Texto

Puede consultar, en la documentación oficial, la sección titulada
link("https://typst.app/docs/reference/scripting/")[_Scripting_].

Es algo extraño el uso del símbolo `#`, pero permite hacer muy cómoda la
creación de lo que en el mundo TeX llaman entornos.







== Fuentes de información y de consulta

Algo que parece que están haciendo muy bien los creadores de Typst es
propiciar que toda la actividad relativa al proyecto pase por ellos. Así, se
tiene, por ejemplo, el [foro oficial del proyecto][foro-oficial], hospedado
bajo su misma web. En el fondo lo que usa es Discourse, con lo que se ve muy
moderno y con gran usabilidad.

[foro-oficial]: https://forum.typst.app/

También, a la hora de crear documentación en los módulos Typst, existe un
paquete llamado [Tidy][] con el que podrá hacerlo en Typst.

[Tidy]: https://typst.app/universe/package/tidy






== Carencias

Typst en un proyecto que aún no lleva muchos años en fase de desarrollo, con
lo que es normal que tenga algunas carencias. Aun así, creo que actualmente
merece mucho la pena pasarse de LaTeX a Typst.

En lo que respecta a las cosas que echo en falta, por ejemplo, se tiene que
la adaptación al español aún no está muy lograda, pero creo que no tardará
en llegar.


EE

Algo que estaría muy bien es que, en el texto que se pone dentro del modo
matemáticas, se usase la misma fuente tipográfica que tiene el resto del
texto normal, es decir, el del cuerpo de texto. 

Hay un _issue_ de GitHub sobre esta cuestión, solo que aún están debatiendo
sobre si es recomendable que tenga este comportamiento o no.

// https://github.com/typst/typst/issues/366



