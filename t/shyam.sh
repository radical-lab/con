#!/bin/bash
file=teapot
set -- tex dn skt
name=$2
set -- vim emacs
butterfly=$1
set -- pdflatex xelatex
tex=$2

############################################################################################################

g() {
	[ $? -eq 0 ] && "$tex" --shell-escape --output-directory svg-inkscape "svg-inkscape/$1.tex";
}
f() {
	"$1" "$2.$3" "svg-inkscape/$2.tex" && g "$2" #&& g "$2"; # TIC TOC, TEX TOC
}

printf \\ec;
case "$name" in
	tex) cmd=true;;
	dn ) cmd=devnag;;
	skt) cmd=skt;;
	*  ) echo '⸘whois‽' && exit -z
esac

printf \\ec;
case "$butterfly" in
	vim  ) "$butterfly" "$file.$name" -c 'set syntax=tex';;
	emacs) "$butterfly" "$file.$name";;
	*    ) echo '⸘do you even hack‽' && exit -z
esac

printf \\ec;
f "$cmd" "$file" "$name"

# yet another moral: diplomatic immunity causes human rights abuses (but you should give it to me anyway)
# yet another teacup: usa cops shoot to kill, but they do not kill terrorists (their cops are terrorists)
