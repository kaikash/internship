# !/usr/bin/env sh

set -e

# Setup specific Bundler options if this is CI
if [ "$CI" ]; then
  BUNDLER_ARGS="--without development staging production"
fi

# Make sure we have Bundler installed
gem install bundler --conservative

# Set up Ruby dependencies via Bundler into .bundle folder
rm -f .bundle/config

bundle check --path .bundle > /dev/null 2>&1 ||
  bundle install --path=.bundle $BUNDLER_ARGS

# Set up configurable environment variables
if [ ! -f .env ]; then
  cp .env.example .env
fi

# Set up database and add any development seed data
bin/rails db:setup

# Clean log files and tmp directory
bin/rails log:clear tmp:clear
