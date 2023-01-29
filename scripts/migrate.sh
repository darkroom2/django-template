#!/usr/bin/env sh

set -o errexit
set -o nounset

projectRootDir=$(realpath "$(dirname "$0")"/..)

"$projectRootDir"/src/manage.py makemigrations
"$projectRootDir"/src/manage.py migrate
