#!/usr/bin/env bash
 
npm run build
npm run dist
for i in src/functions/$MODULE/${FUNCTION:=*}.js
do
  TARGET=$(basename ${i%.*}) \
  npm run aws:config
  npm run aws:deploy
  done
npm run dist:clean