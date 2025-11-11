#!/bin/bash

# Build the LaTeX document
pdflatex -interaction=nonstopmode main.tex
biber main
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex

# Copy the PDF with the desired name
cp main.pdf "ALI TABESHPOUR - Software Engineer.pdf"

echo "Build complete! Generated files:"
echo "  - main.pdf"
echo "  - ALI TABESHPOUR - Software Engineer.pdf"
