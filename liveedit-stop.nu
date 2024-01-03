#!/bin/env nu

try {
    pueue kill -g typst-live
    sleep 1sec
    pueue clean -g typst-live
    pueue group remove typst-live
}
