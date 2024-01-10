#!/bin/env nu
def main [] {
    ./compile.nu

    try { rm -rf submission }
    try { mkdir submission }
    cd submission

    pdf_cli --file ../target/main.pdf merge --path ../src/appendix.pdf
    mv merged.pdf main.pdf

    pdf_cli --file ../target/main-with-urls.pdf merge --path ../src/appendix.pdf
    mv merged.pdf main-with-urls.pdf
}
