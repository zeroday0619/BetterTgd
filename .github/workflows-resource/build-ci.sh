#!/bin/bash

echo ==================================================
echo "Package Builder"
echo ==================================================
echo
sleep 3

echo Current Working Directory is...
pwd
echo

echo Removing existing BetterTgd Archive.
rm BetterTgd.zip
echo Done.
echo

echo Building BetterTgd Archive....
zip -r BetterTgd.zip * --exclude=*.git* --exclude=*node_modules* --exclude=*.DS_store --exclude=*.sh --exclude=*showcase/BetterTgd-logo.psd