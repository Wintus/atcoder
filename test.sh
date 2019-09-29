#!/usr/bin/env bash

CMD='ruby main.rb'
TEST="pipenv run oj test -d tests/ -c '${CMD}'"

error() {
  echo ERROR: $@ >&2
}

run-test() {
  dir=$1

  if [[ -d ${dir} ]]; then
      cd ${dir}
  else
      error missing dir
      exit 1
  fi

  eval ${TEST}
}

for dir in $@; do
  echo testing ${dir}
  (run-test ${dir})
done
