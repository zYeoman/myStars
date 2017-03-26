#!/usr/bin/env bash

trap "echo CTRL-C was pressed && exit" 2
if type "starred" > /dev/null; then
    starred --username=zYeoman --sort > README.md
else
    echo "Please pip install starred first!"
    exit
fi
git diff
read -p "Do you wish to commit and push?[Y/n]" yn
case $yn in
    [Nn]* ) exit;;
    * ) git add . && git commit -m ":sparkles: Update" && git push;;
esac
