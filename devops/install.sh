#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__root="$(cd "$(dirname "${__dir}")" && pwd)"
pushd .

cd $__root
pwd
composer install --no-progress --no-ansi --ignore-platform-reqs

popd