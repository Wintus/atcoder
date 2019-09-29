#!/usr/bin/env bash

CMD='pipenv run acc submit'

error() {
  echo ERROR: $@ >&2
}

submit() {
  dir=$1

  if [[ -d ${dir} ]]; then
      cd ${dir}
  else
      error missing dir
      exit 1
  fi

  eval ${CMD}
}

for dir in $@; do
  echo submitting ${dir}
  (submit ${dir})
done
