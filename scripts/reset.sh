#!/usr/bin/env sh

set -o errexit
set -o nounset

projectRootDir=$(realpath "$(dirname "$0")"/..)

"$projectRootDir"/scripts/migrate.sh
"$projectRootDir"/scripts/load-json.sh "$projectRootDir"/db.json
