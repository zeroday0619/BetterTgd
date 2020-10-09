#!/bin/bash
echo ==================================================
echo Package Builder
echo ==================================================
echo
sleep 3

echo Current Working Directory is...
pwd
echo

echo Removing existing BetterTgd Archive.
rm BetterTgd.zip
rm BetterTgd@MisakaMikoto.moe.xpi
rm BetterTgd.MisakaMikoto.moe.zip
echo Done.
echo

echo Building BetterTgd Archive....
zip -r BetterTgd.zip * --exclude=*.git* --exclude=*node_modules* --exclude=*.DS_store --exclude=*.sh

echo Building Archive for Firefox Add-on Team...
zip -r BetterTgd.MisakaMikoto.moe.zip * --exclude=*.DS_store
cp BetterTgd.zip BetterTgd@MisakaMikoto.moe.xpi