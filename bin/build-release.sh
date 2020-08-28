#!/bin/bash

echo Create new release ZIP for OutSystems Vale style...
cd styles-vale && rm -f OutSystems.zip && zip -r OutSystems.zip OutSystems vocab.txt && cd ..

echo Done.
