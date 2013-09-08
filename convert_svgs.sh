for f in svgs/bodies/*.svg; do 
    convert -background none $f -resize 55x500 pngs/bodies/$(basename $f .svg).right.png
    convert -background none $f -flop -resize 55x500 pngs/bodies/$(basename $f .svg).left.png
done
for f in svgs/heads/*.svg; do 
    convert -background none $f -resize 51x51 pngs/heads/$(basename $f .svg).right.png
    convert -background none $f -flop -resize 51x51 pngs/heads/$(basename $f .svg).left.png
done
for f in svgs/ends/*.svg; do 
    convert -background none $f -resize 40x40 pngs/ends/$(basename $f .svg).icon.png
    convert -background none $f -resize 160x160 pngs/ends/$(basename $f .svg).large.png
done
convert -background none svgs/thoughtbubble.svg -resize 115x115 pngs/thoughtbubble.png

