#!/bin/bash
# build.sh — helper script for compiling LaTeX project with latexmk (XeLaTeX)

FILE="sampleReport.tex"

if [ "$1" == "watch" ]; then
  echo "🔄 Watching $FILE ... (auto compile on save)"
  latexmk -xelatex -pvc "$FILE"
else
  echo "📝 Building $FILE ..."
  latexmk -xelatex -interaction=nonstopmode -halt-on-error "$FILE"
  echo "✅ Done. Output PDF should be: sampleReport.pdf"
fi

