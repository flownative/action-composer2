#!/bin/sh
set -x

composer --no-dev -o -v --no-progress --ignore-platform-reqs install
