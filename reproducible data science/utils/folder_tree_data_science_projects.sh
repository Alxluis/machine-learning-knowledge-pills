#!/bin/bash

# -- Path
WHERE="$1"

# -- If not path, run it here
if [ -z "$1" ];
  then
    echo "No path provided. Running in ''.''";
else
  	echo "Path provided. Running in $WHERE";
    # -- Moving to PATH
    cd $WHERE
fi

# -- Create README
echo "README" > ./README

# -- Create LICENSE
echo "LICENSE" > ./LICENSE

# -- Create first level folders
mkdir docs src models data

# -- Create second level folders

cd docs && mkdir tutorials resutls notebooks && cd ..

cd models && mkdir current superseded && cd ..
