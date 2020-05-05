#!/bin/sh
set -x

COMPOSER_AUTH=${INPUT_AUTH_JSON}
export COMPOSER_AUTH
composer --no-dev -o -v --no-progress --ignore-platform-reqs install
