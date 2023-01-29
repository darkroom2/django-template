#!/usr/bin/env sh

set -o errexit
set -o nounset

projectRootDir=$(realpath "$(dirname "$0")"/..)

# if more than one argument is passed, print usage and exit
if [ $# -gt 1 ]; then
  echo "Usage: $0 [json-file]" >&2
  exit 1
fi

"$projectRootDir"/src/manage.py flush --noinput
"$projectRootDir"/src/manage.py loaddata "$1"
