#! /bin/bash

if [ $TRAVIS_PULL_REQUEST == "true" ]; then
  echo "This is a PR. Exiting"
  exit 0
fi

set -e

echo "+===================================+"
echo "Check status"
echo "+===================================+"

bundle exec rspec
bundle exec rake build

echo "+===================================+"
echo "Checked"
echo "+===================================+"
