#!/bin/sh

echo "Starting book building..."

if [ "$#" = 1 ] && [ $1 = "pdf" ] 
then

	jupyter-book build book --builder pdfhtml
        open book/_build/pdf/book.pdf
else
	jupyter-book build book
        open book/_build/html/index.html
fi
