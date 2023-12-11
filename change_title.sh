for file in *.html; do
    title=$(grep -oP '<title>\K[^<]+' "$file")
    if [ -n "$title" ]; then
        sed -i "46s|<h1>.*</h1>|<h1>$title</h1>|" "$file"
    fi
done
