#!/usr/bin/env sh

set -o errexit
set -o nounset

projectRootDir=$(realpath "$(dirname "$0")"/..)

# if file db.sqlite3 exists exit with error
if [ -f "$projectRootDir"/src/db.sqlite3 ]; then
    echo "db.sqlite3 already exists, exiting..." 2>&1
    exit 1
fi

"$projectRootDir"/scripts/migrate.sh
"$projectRootDir"/src/manage.py shell -c "from django.contrib.auth.models import User; User.objects.all().delete(); User.objects.create_superuser('radek', '', 'radek131313')"
"$projectRootDir"/scripts/dump-json.sh >"$projectRootDir"/db.json
