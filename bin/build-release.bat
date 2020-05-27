@echo off

pushd styles-vale

echo Create new release ZIP for OutSystems styles...
..\bin\zip.exe -r OutSystems.zip OutSystems vocab.txt
popd

echo Done.

