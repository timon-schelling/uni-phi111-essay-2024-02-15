#!/bin/env nu
def main [] {
    try { rm -rf target }
    try { mkdir target }
    echo "
        typst compile src/main.typ target/main.pdf
        typst compile src/main.typ --input urls=1 target/main-with-urls.pdf
        typst compile src/main.typ --input theme=dark target/main-dark.pdf
        typst compile src/main.typ --input theme=dark --input urls=1 target/main-dark-with-urls.pdf
    " | rust-parallel
}
