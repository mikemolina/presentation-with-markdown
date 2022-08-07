# Presentación con markdown
Un ejemplo elemental de elaboración de una presentación
**LaTeX/Beamer** usando el formato **Markdown**, compilado a través
del popular conversor de documentos **Pandoc**.

Archivos de configuración y comandos de compilación para Pandoc son
incluidos en este ejemplo.

## Dependencias
Para obtener el PDF de la presentación, este ejemplo requiere:

- Una distribución TeX: [TeX Live](https://tug.org/texlive/) para
  distros Linux o [MiKTeX](https://miktex.org/) para Windows.
- [Pandoc](https://pandoc.org/), versión 2.x o más reciente.
- [GNU Make](https://www.gnu.org/software/make/) para la ejecución de
  comandos.

## Archivos de configuración
Ver directorio _config_.

### _configppt.yaml_
Conjunto de parámetros YAML para configurar la diapositiva de
presentación inicial (título, logo, fecha), opciones del paquete
Beamer (tema, fuente, tamaño) y opciones de Pandoc.

### _beamer_tpl.latex_
Plantilla de personalización para modificar instrucciones de
LaTeX/Beamer generado con Pandoc:

	pandoc -D latex > beamer_tpl.latex

### _citations.bib_
Documento para el manejo de referencias bibliográficas en formato
BibTeX.

### Archivo CSL
Documento de lenguaje de estilo de citaciones para el manejo de citas
bibliográficas. El ejemplo presente usa el estilo _The Open
University - Harvard_ con formato autor-fecha, obtenido desde el
[repositorio de estilos
Zotero](https://www.zotero.org/styles/the-open-university-harvard).

### _Makefile_
Instrucciones para compilar la presentación con formato PDF vía
Pandoc.

## Generar presentación PDF
Simplemente usar:

	make gen_beamer

## Sobre el contenido de esta presentación
El contenido temático de esta presentación tiene como eje central la
divulgación de la función de la Comisión de la Verdad como mecanismo
transitorio extrajudicial para conocer y esclarecer la verdad, frente
a los hechos de violaciones de los derechos humanos ocurridos en el
marco del conflicto armado en Colombia.

## Licencia
The Unlicense

