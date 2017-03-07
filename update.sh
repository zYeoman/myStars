#!/usr/bin/env bash

if type "starred" > /dev/null; then
    starred --username=zYeoman --sort > README.md
else
    echo "Please pip install starred first!"
fi
git diff
read -p "Do you wish to commit and push?[Y/n]" yn
case $yn in
    [Nn]* ) exit;;
    * ) git add . && git commit -m ":sparkles: Update" && git push;;
esac
