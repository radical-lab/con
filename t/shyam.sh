#!/bin/bash
printf \\ec;
vim teapot.dn -c 'set syntax=tex';
devnag teapot.dn;
pdflatex teapot.tex;
pdflatex teapot.tex; # TIC TOC, TEX TOC
rm *.aux *.log *.out *.toc *.tex;
