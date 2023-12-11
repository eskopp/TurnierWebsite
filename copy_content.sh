#!/bin/bash

# Name der Quelldatei
source_file="BlitzAusschreibung.html"

# Iteriere über alle HTML-Dateien im aktuellen Verzeichnis
for html_file in *.html; do
  # Überprüfe, ob die Datei leer ist
  if [ ! -s "$html_file" ]; then
    # Kopiere den Inhalt der Quelldatei in die leere Datei
    cat "$source_file" > "$html_file"
    echo "Inhalt von $source_file in $html_file kopiert."
  else
    echo "Die Datei $html_file enthält bereits Inhalt und wird ignoriert."
  fi
done
