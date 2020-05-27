#!/bin/bash

echo Create new release ZIP for OutSystems styles...
cd styles-vale && zip -r OutSystems.zip OutSystems vocab.txt && cd ..
echo Done.
