#!/bin/sh
echo "[INFO]: running template index.html.j2..."
j2 /usr/local/apache2/htdocs/index.html.j2 > /usr/local/apache2/htdocs/index.html
echo "[INFO]: launching apache server..."
httpd-foreground