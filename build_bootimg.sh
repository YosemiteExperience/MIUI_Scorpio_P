dir=${PWD}

echo "clearing output/boot.img"
test -f output/boot.img && rm -f output/boot.img || echo "nothing to clear"

cd kernel
echo "clearing out kernel/boot.img"
test -f boot.img && rm -f boot.img || echo "nothing to clear"
./mkboot boot_extracted boot.img
cd ${dir}

echo "copying new boot.img to output dir"
mv kernel/boot.img output/boot.img
