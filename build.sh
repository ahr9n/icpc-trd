#!/bin/bash

set -e

rm -f *.aux *.log *.toc *.pdf

python3 build-contents.py > contents.tex

sudo apt install rubber

rubber -d trd.tex

rm -f *.aux *.log *.toc contents.tex
