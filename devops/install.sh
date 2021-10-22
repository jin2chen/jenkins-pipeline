#!/bin/bash
set -e
source "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/bootstrap.sh"

pushd .
# <<<
cd $PROJECT_HOME
pwd
composer install --no-progress --no-ansi --ignore-platform-reqs
# >>>
popd