for file in images/*.{jpg,JPG,gif}; do
    [ ! -f "tn/$file" ] && convert "$file"  -thumbnail 200x200 "tn/$file"
done