#!/bin/bash

# Define directories
SRC_DIR="src"
DIST_DIR="dist"

# Remove the dist directory if it exists
if [ -d "$DIST_DIR" ]; then
  rm -rf "$DIST_DIR"
fi

# Create the dist directory
mkdir -p "$DIST_DIR"

# Convert .tex files to PDF, DOCX, and Markdown
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

    # Convert .tex to Markdown
    pandoc "$file" -s -o "$DIST_DIR/$fileName.md"
    if [ $? -eq 0 ]; then
      echo "Converted $file to Markdown."
    else
      echo "Error converting $file to Markdown."
    fi
  fi
done

echo "Conversion process completed. Check the dist directory for output files."