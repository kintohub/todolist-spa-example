#!/bin/bash

set -e

echo "Script replacing dynamically environment variables in all files"
echo " usage replaceEnvVars.sh BUILD_PATH"
echo " default BUILD_PATH = ."
echo

BUILD_PATH="."
if [ -n "$1" ]; then
  BUILD_PATH=$1
fi

echo "Replacing environment variables in $BUILD_PATH"

replace() {
    find $BUILD_PATH/ -name '*.js' | xargs sed -i "s|{$1}|$2|g"  || echo "no js files"
    find $BUILD_PATH/ -name '*.html' | xargs sed -i "s|{$1}|$2|g" || echo "no html files"
}

replace REACT_APP_API_BASE_URL ${REACT_APP_API_BASE_URL}
replace REACT_APP_AUTH_TOKEN ${REACT_APP_AUTH_TOKEN}

echo "Done"
echo
