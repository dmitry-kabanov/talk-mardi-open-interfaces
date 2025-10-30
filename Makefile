TEX_MAIN := talk-mardi-open-interfaces.tex

_is_notify_send_avail := $(shell command -v notify-send 2>/dev/null 1>/dev/null && echo true)

ifeq ($(_is_notify_send_avail), true)
	report_error := notify-send --app-name=pdflatex "Could not compile $(TEX_MAIN)"
else
	report_error := echo "ERROR" >&2
endif


.PHONY : all
# Compile quickly, possibly having not resolved references, etc.
all : figures
	pdflatex -shell-escape -halt-on-error $(TEX_MAIN) || $(report_error)

.PHONY : release
# Compile thoroughly, multiple times, to resolve all references, but slow.
release : figures
	latexmk

.PHONY : figures
# Compile figures from their source code, for example, UML diagrams.
figures :
	make -C assets/uml-diagrams

.PHONY : clean
# Clean all intermediate artefacts.
clean:
	latexmk -c
