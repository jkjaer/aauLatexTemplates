$ENV{TERM} = 'dumb';
$lualatex  = 'lualatex --file-line-error --halt-on-error --interaction=nonstopmode --synctex=1 --shell-escape %O %S';
$pdf_mode  = 4;
$aux_dir   = './aux/';
$out_dir   = './out/';
