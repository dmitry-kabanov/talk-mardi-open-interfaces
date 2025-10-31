$pdf_mode = 1;  # Use PDFLaTeX
# $pdf_mode = 4;  # Use LuaLaTex

# This variable is used with $pdf_mode = 1.
$pdflatex = "pdflatex -halt-on-error -shell-escape %O %S";
#
# This variable is used with $pdf_mode = 4.
$lualatex = 'lualatex -shell-escape -file-line-error %O %S -synctex=1';

# Equivalent to using `-pvc` argument in the command line.
# $preview_continuous_mode = 1;

@default_files = ("talk-mardi-open-interfaces.tex");

# Files to be cleaned.
$clean_ext = "deriv equ glo gls gsprogs hd listing lol" .
" _minted-%R/* _minted-%R nav snm synctex.gz tcbtemp vpprogs run.xml pyg vrb";
