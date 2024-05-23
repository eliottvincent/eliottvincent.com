#!/bin/bash

ABSPATH=$(cd "$(dirname "$0")"; pwd)
BASE_DIR="$ABSPATH/../"

pushd "$BASE_DIR" > /dev/null
  bundle exec jekyll serve \
    --destination ./serve \
    --config _config.yml,_config_local_development.yml
  rc=$?
popd > /dev/null

exit $rc
