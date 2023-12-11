for file in *.html; do
  sed -i "s|<h1>Generic</h1>|<h1>$(basename -s .html "$file")</h1>|" "$file"
done
