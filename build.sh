main_ink_file="help.ink"

out_path=./build
if [ -d $out_path ]; then rm -rf $out_path; fi

# Compile the protocol Ink
if [[ $(uname) == *"MINGW"* ]]; then
    inklecate/inklecate.exe ${main_ink_file}
else
    mono inklecate/inklecate.exe ${main_ink_file}
fi


# Make the static site
cp -r boilerplate $out_path
echo "var storyContent = $(cat ${main_ink_file}.json);" > $out_path/story.js
cp "index.html" "$out_path/"
cp -r "images" "$out_path/"
cp "temmy.js" "$out_path/"

# Clean up
rm ${main_ink_file}.json

(cd $out_path && http-server)