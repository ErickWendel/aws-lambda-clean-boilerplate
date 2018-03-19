#!/usr/bin/env bash
rm -rf .dist
mkdir .dist
mkdir .dist/functions
cp -r \
    src/functions/_environment \
    src/functions/_helpers \
    .dist/functions

cd .dist/functions

for D in `ls`
do 
  cd $D
  npm i --production --silent
  cd ..
done

cd ../../
 

cp -r src/dtos .dist/dtos

path=$PWD 

cd .dist/functions
mkdir ${MODULE}

pathModule=$path/.dist/functions/${MODULE:=*}/
cp $path/src/functions/${MODULE}/${FUNCTION}.js $pathModule
cp $path/src/functions/${MODULE}/package.json $pathModule

cd $pathModule
npm i --production --silent



 