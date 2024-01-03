#!/bin/env nu
def main --wrapped [...args] {
    let args = $args | str join " "
    echo $"typst-live --no-recompile src/main.pdf\ntypst watch src/main.typ ($args)" | rust-parallel
}
