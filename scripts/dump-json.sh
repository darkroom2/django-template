#!/usr/bin/env sh

set -o errexit
set -o nounset

projectRootDir=$(realpath "$(dirname "$0")"/..)

"$projectRootDir"/src/manage.py dumpdata \
  --natural-foreign \
  --exclude=contenttypes \
  --exclude=sessions \
  --exclude=auth.permission \
  --exclude=admin \
  --indent 2
