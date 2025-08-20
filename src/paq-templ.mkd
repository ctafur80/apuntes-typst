



## Paquetes y plantillas

Al igual que LaTeX, Typst cuenta con un repositorio con paquetes
(_packages_), incluyendo también a plantillas (_templates_), con el que
podrá lograr fácilmente textos muy avanzados, con gráficos, etc. El
repositorio oficial de Typst recibe el nombre de [Typst Universe][].

[Typst Universe]: https://typst.app/universe/

Al contrario de lo que sucede con TeX y sus formatos, crear un paquete
básico o una plantilla para Typst no es complicado.

La explicación de cómo crear un paquete para su uso interno en su sistema o
bien promocionarlo (_submit_) en Typst Universe se encuentra en el
[repositorio][repo-packages] oficial de Typst a este respecto.

[repo-packages]: https://github.com/typst/packages

La primera plantilla que hice la publiqué en un repositorio de GitHub y la
añadía a mis documentos de Typst mediante un submódulo de Git. Lo cierto es
que era bastante engorro. Es mejor que TKTK.

Lo primero que le recomendaría es que crease el paquete de forma local en su
sistema y, una vez que lo tenga bastante depurado, lo "suba" a Typst
Universe. Para esto, debe tener en cuenta lo que se explica en la parte de
[Local packages][]. Tenga en cuenta que, aunque no exista el directorio de
Typst donde ahí se indica, puede crearlo usted mismo y el propio Typst
reconocerá ese paquete local.

[Local packages]: https://github.com/typst/packages?tab=readme-ov-file#local-packages

Algo que debe tener es un archivo _typst.toml_ en el directorio raíz del
paquete. Puede ver la [documentación sobre este archivo][typst-toml-docs].
Tenga en cuenta que, si se trata de uina plantilla (_template_), será algo
diferente, tal y como se explica ahí.

[typst-toml-docs]: https://github.com/typst/packages/blob/main/docs/manifest.md


Si finalmente decide "subir" el paquete a Typst Universe, puede consultar en
la documentación oficial [cómo se hace][typst-submit-universe].

[typst-submit-universe]: https://github.com/typst/packages/blob/main/docs/README.md#package-submission-guidelines




