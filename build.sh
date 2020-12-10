#!/bin/bash
CWD="$(dirname "$(realpath "$0")")"
PATH="${CWD}/node_modules/.bin:${PATH}"

set -eux

if ! command -v sass &>/dev/null; then
    echo "Sass not found!" >&2;
    exit 1
fi

if ! command -v chrome-headless-render-pdf &>/dev/null; then
    echo "Chrome-headless-render-pdf not found!" >&2;
    exit 1
fi

if ! command -v google-chrome &>/dev/null && ! command -v chromium &>/dev/null; then
    echo "Chrome not found!" >&2;
    exit 1
fi

sass --no-source-map \
    --style=compressed \
    src/scss/main.scss src/main.css

chrome-headless-render-pdf \
    --paper-width 8.3 \
    --paper-height 11.7 \
    --no-margins \
    --include-background \
    --url "file://${CWD}/src/index.html" \
    --pdf resume.pdf
