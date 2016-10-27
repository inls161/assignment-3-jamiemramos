#!/bin/bash

#Ask what should be converted
echo "What markdown file would you like converted? Don't include the format type."
# Find out what file needs to be converted
read FILENAME
#State what FILENAME will be converted
echo "$FILENAME will be converted."
# Convert markdown to HTML
pandoc -S -o $FILENAME.html $FILENAME.md
# Convert markdown to DOCX
pandoc -S -o $FILENAME.docx $FILENAME.md
# Convert markdown to ODT
pandoc -S -o $FILENAME.odt $FILENAME.md
# Convert markdown to PDF
pandoc -S -o $FILENAME.pdf $FILENAME.md
# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF
echo "Converted $FILENAME to HTML, DOCX, ODT, PDF"