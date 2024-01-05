#!/bin/env nu
def main [] {
    try { rm -rf target }
    try { mkdir target }
    cd target
    echo "
        typst compile ../src/main.typ main.pdf
        typst compile ../src/main.typ --input urls=1 main-with-urls.pdf
        typst compile ../src/main.typ --input theme=dark main-dark.pdf
        typst compile ../src/main.typ --input theme=dark --input urls=1 main-dark-with-urls.pdf
    " | rust-parallel
}
