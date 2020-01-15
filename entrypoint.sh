#!/bin/sh
set -x

which ssh-agent || ( apt-get update -y && apt-get install openssh-client -y )
eval $(ssh-agent -s)
if [ -n "${CI_REPOSITORY_ACCESS_PRIVATE_KEY}" ]; then
  ssh-add <(echo "${CI_REPOSITORY_ACCESS_PRIVATE_KEY}");
fi
mkdir -p ~/.ssh && ssh-keyscan -t rsa gitlab.com >> ~/.ssh/known_hosts
composer --no-dev -o -v --no-progress --ignore-platform-reqs install
