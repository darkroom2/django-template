#!/usr/bin/env sh

set -o errexit
set -o nounset

projectRootDir=$(realpath "$(dirname "$0")"/..)

black "$projectRootDir"/src
