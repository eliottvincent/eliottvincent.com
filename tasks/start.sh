#!/bin/bash

ABSPATH=$(cd "$(dirname "$0")"; pwd)
BASE_DIR="$ABSPATH/../"

pushd "$BASE_DIR" > /dev/null
  cur_env="development"

  if [ ! -z "$1" ]; then
    cur_env="$1"
  fi

  if [[ "$cur_env" = "production" ]]; then
    env JEKYLL_ENV=production bundle exec jekyll build \
      --destination ./build \
      --config _config.yml
    rc=$?
  else
    env JEKYLL_ENV=development bundle exec jekyll build \
      --destination ./build \
      --config _config.yml,_config_local.yml
    rc=$?
  fi
popd > /dev/null

exit $rc
