#!/usr/bin/env bash

BUILDDIR=build
# pull in pikchr
git submodule update --init

cd pikchr && make && cd ..
cd htmldoc && ./configure && make && cd ..

pikchr/pikchr --svg-only diagram.pik > ${BUILDDIR}/diagram.svg
markdown idf.md > ${BUILDDIR}/idf.html
# Yup, that's three "htmldoc"s in there
htmldoc/htmldoc/htmldoc ${BUILDDIR}/idf.html -f ${BUILDDIR}/idf.pdf
