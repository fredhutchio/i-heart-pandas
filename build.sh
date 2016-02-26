#!/bin/sh
set -e


pandoc \
    -t revealjs \
    --standalone \
    --variable transition="fade" \
    --include-in-header src/simple-small.css \
    --smart \
    -o "$2" \
    $1

sed -e "s_reveal.js/css/reveal.min.css_reveal.js/css/reveal.css_" \
    -e "s_reveal.js/js/reveal.min.js_reveal.js/js/reveal.js_" \
    -e "s_simple.css_black.css_" \
    -i "$2"
