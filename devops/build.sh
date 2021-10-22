#!/bin/bash
set -e
source "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/bootstrap.sh"

pushd .
# <<<
cd $PROJECT_HOME
docker pull jin2chen/php:7.4-fpm-alpine
docker run -v $(pwd):/code --rm jin2chen/php:7.4-fpm-alpine /code/devops/install.sh
# >>>
popd