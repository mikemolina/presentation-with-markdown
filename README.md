# Presentation with markdown
An elementary example of making a presentation **LaTeX/Beamer** using
the **Markdown** format, compiled via the popular document converter:
**Pandoc**.

Configuration files and build commands for Pandoc are included in this
example.

## Dependencies
To get the PDF of the presentation, this example requires:

- A TeX distribution: [TeX Live](https://tug.org/texlive/) for Linux
  distros or [MiKTeX](https://miktex.org/) for Windows.
- [Pandoc](https://pandoc.org/), version 2.x or newer.
- [GNU Make](https://www.gnu.org/software/make/) for running commands.

## Configuration files
See directory _config_.

### _configppt.yaml_
Set of YAML parameters to configure the slide initial presentation
(title, logo, date), package options Beamer (theme, font, size) and
Pandoc options.

### _beamer_tpl.latex_
Customization template for modifying instructions LaTeX/Beamer
generated with Pandoc:

	pandoc -D latex > beamer_tpl.latex
	
### _citations.bib_
Document for managing bibliographic references in format BibTeX.

### CSL file
Citation style language document for citation bibliographic
handling. The present example uses the style _The Open University -
Harvard_ with author-date format, obtained from the [Zotero Style
Repository](https://www.zotero.org/styles/the-open-university-harvard).

### _Makefile_
Instructions to compile the presentation with PDF format via Pandoc.

## Generate PDF presentation
Simply use:

	make gen_beamer

## About the content of this presentation
The thematic content of this presentation has as its central axis the
divulgation of the function of the Truth Commission as a transitory
extrajudicial mechanism to know and clarify the truth, in the frame of
the acts of human rights violations that occurred in the context of
the armed conflict in Colombia.

## License
The Unlicense

