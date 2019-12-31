#!/bin/bash

ABSPATH=$(cd "$(dirname "$0")"; pwd)
BASE_DIR="$ABSPATH/../"

pushd "$BASE_DIR" > /dev/null
  bundle exec jekyll serve --destination ./serve
  rc=$?
popd > /dev/null

exit $rc
