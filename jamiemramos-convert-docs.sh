#!/bin/bash

#Ask what should be converted
echo "What document would you like converted?"
# Declare input argument as a variable
read FILENAME
#State what FILENAME will be converted
echo "$FILENAME will be converted."
# Convert markdown to HTML
pandoc -S -o $FILENAME.html $FILENAME
# Convert markdown to DOCX
pandoc -S -o $FILENAME.docx $FILENAME
# Convert markdown to ODT
pandoc -S -o $FILENAME.odt $FILENAME
# Convert markdown to PDF
pandoc -S -o $FILENAME.pdf $FILENAME
# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF
echo "Converted $FILENAME to HTML, DOCX, ODT, PDF"