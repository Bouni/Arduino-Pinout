# convert all svg's to png's
# make sure that inkscape is in path variable

$svgs = Get-ChildItem "." -Filter *.svg

foreach($svg in $svgs) {
    $basename = $svg.basename
    inkscape -z -e "${basename}.png" -w 3072 $svg
}