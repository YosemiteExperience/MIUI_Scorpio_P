dir=${PWD}
# copy system files
cp -Rf system output
cd output

# test existence of boot.img
status_zip=1
test -f boot.img && echo "packing zip file..." || status_zip=0
if [ ${status_zip} -eq 0 ]; then echo "boot.img not present, aborting..." && exit
fi

# ZIP IT!
rm -rf .*
rm -rf system/.*
zip -r ../ROM.zip *

cd ${PWD}
echo "Successfully exported flashable zip as ROM.zip!"
