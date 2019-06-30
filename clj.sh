#!/usr/bin/env bash

lein deps
java -cp $(lein classpath) clojure.main $1
