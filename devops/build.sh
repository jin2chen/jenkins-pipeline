#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__root="$(cd "$(dirname "${__dir}")" && pwd)"
pushd .

cd $__root
docker pull jin2chen/php:7.4-fpm-alpine
docker run -v $(pwd):/code --rm jin2chen/php:7.4-fpm-alpine /code/devops/install.sh

popd