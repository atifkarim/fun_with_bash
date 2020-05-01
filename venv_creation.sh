#!/bin/bash

# execute the code by writing in a terminal--- source venv_creation.sh

echo "this will help to create a py3 venv"
echo "Please give folder name"
read DIRECTORY
cd ~

factorial()
{
    if [ ! -d "$DIRECTORY" ]; then
	echo "good boy"
        #mkdir -p "$DIRECTORY"
	echo 1
    else
	echo "vaire vai sabdhan"
	read DIRECTORY
	factorial DIRECTORY
        #last=$(factorial $(( $1 - 1 )))
        #echo $(( $1 * last ))
    fi
}
factorial DIRECTORY

echo "press 5 for py 3.5 or 6 for 3.6"
read venv_version

if (( venv_version == 5 )); then
    echo "start"
    python3 -m venv $DIRECTORY
    echo "stop"
else
    virtualenv --python=/usr/bin/python3.6 $DIRECTORY
fi

echo "activating virtual environment"
source ~/$DIRECTORY/bin/activate
#echo "python version of this virtula environment is:---- "
python --version
