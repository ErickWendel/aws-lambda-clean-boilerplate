#!/usr/bin/env bash 

aws \
  lambda update-function-configuration --function-name ${npm_package_name}_${TARGET} \
  --region ${npm_package_aws_region} \
  --environment file://src/functions/$MODULE/environment/${FUNCTION}.${NODE_ENV}.json \
  --handler functions/$MODULE/${TARGET}.handler \
  --runtime ${npm_package_aws_runtime:=nodejs6.10}