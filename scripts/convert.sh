#!/bin/bash

# Define directories
SRC_DIR="src"
DIST_DIR="dist"

# Create the dist directory if it doesn't exist
if [ ! -d "$DIST_DIR" ]; then
  mkdir -p "$DIST_DIR"
fi

# Convert .tex files to PDF and DOCX
for file in "$SRC_DIR"/*.tex; do
  if [ -f "$file" ]; then
    fileName=$(basename "$file" .tex)

    # Convert .tex to PDF
    pdflatex -output-directory="$DIST_DIR" "$file"
    if [ $? -eq 0 ]; then
      echo "Converted $file to PDF."
    else
      echo "Error converting $file to PDF."
    fi

    # Convert .tex to DOCX
    pandoc "$file" -s -o "$DIST_DIR/$fileName.docx"
    if [ $? -eq 0 ]; then
      echo "Converted $file to DOCX."
    else
      echo "Error converting $file to DOCX."
    fi
  fi
done

echo "Conversion process completed. Check the dist directory for output files."
