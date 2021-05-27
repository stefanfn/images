#!/bin/bash

[ -n "$1" ] || {
  echo "usage: $(basename $0) <target>" >&2
  exit 1
}

docker build -t $1 -f Dockerfile.$1 .

