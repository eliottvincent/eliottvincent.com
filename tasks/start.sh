#!/bin/bash

ABSPATH=$(cd "$(dirname "$0")"; pwd)
BASE_DIR="$ABSPATH/../"

pushd "$BASE_DIR" > /dev/null
  cur_env="development"

  if [ ! -z "$1" ]; then
    cur_env="$1"
  fi

  if [[ "$cur_env" = "production" ]]; then
    JEKYLL_ENV=production bundle exec jekyll build --destination ./build
    rc=$?
  else
    JEKYLL_ENV=development bundle exec jekyll build --destination ./build
    rc=$?
  fi
popd > /dev/null

exit $rc
