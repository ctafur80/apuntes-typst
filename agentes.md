

Este directorio contiene un proyecto de documentación en el lenguaje
Markdown. El formato de salida es web (HTML y CSS, principalmente), y se
genera por medio del _software_ Pandoc que hace aquí de generador de sitios
estáticos (_static-site generator_).

En el archivo @metadatos.yaml puede ver, especificado en formato YAML, el
título del documento así como una descripción del mismo, y otras cosas. En
este archivo, en el campo `bibliography`, se indican las referencias que se
han usado, aunque la mayoría de las referencias en realidad no están
indicadas ahí ya que son sacadas de webs.

El índice (o tabla) de contenidos es el archivo @toc.mk , es decir, desde
este se "incrustan" los archivos con el contenido del documento.

Algunas de las reglas de estilo que uso son las siguientes:

- Hago un gran uso de sintagmas (_phrases_) en inglés. Empleo como recurso
  tipográfico de estas las itálicas, como en _plug-in_, por ejemplo.



