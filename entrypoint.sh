#!/bin/bash

set -e

./replaceEnvVars.sh build
./replaceEnvVars.sh public

npx serve build