#! /bin/bash -x

# Script to convert PDF into a series of PNG images.
# Usage: $0 [FILE.pdf]

PDF=$1

# Replace ".pdf" with "-slides.png"
SLIDES=${PDF/.pdf/-slides.png}

# Replace spaces with hyphens
SLIDES=${SLIDES/ /-}

# Convert to lowercase
SLIDES=${SLIDES,,}

echo $SLIDES

# Extract basename from the path.
SLIDES=$(basename $SLIDES)

# Convert the PDF into a series of images.
convert -density 300 "$PDF" -quality 100 $SLIDES

