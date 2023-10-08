for file in images/*.{jpg,JPG,gif}; do
    # [ ! -f "tn/$file" ] && convert "$file" -resize 400x "tn/$file"
    [ ! -f "tn/$file" ] && convert "$file"  -thumbnail 400x "tn/$file"
done