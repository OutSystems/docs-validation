@echo off

pushd styles-vale

echo Deleting previous ZIP, if it exists...
del OutSystems.zip
echo Create new release ZIP for OutSystems Vale style...
..\bin\zip.exe -r OutSystems.zip OutSystems vocab.txt
popd

echo Done.

