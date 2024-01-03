#!/bin/env nu

try { pueue group add typst-live }
pueue parallel -g typst-live 2
pueue add -g typst-live -- typst watch src/main.typ --input dark=1
pueue add -g typst-live -- typst-live --no-recompile src/main.pdf
