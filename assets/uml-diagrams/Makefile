pdfs := impl_1_load.pdf impl_2_call.pdf

all : $(pdfs)

%.pdf : %.svg
	inkscape --export-filename=$@ $<

%.svg : %.plantuml style.plantuml
	plantuml -tsvg $< || exit 1

# impl_1_load.pdf : impl_1_load.plantuml
# 	plantuml -tsvg $< && \
# 	inkscape --export-filename=$@ impl_1_load.svg
