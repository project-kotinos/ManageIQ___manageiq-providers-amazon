#!/usr/bin/env bash
set -ex
export DEBIAN_FRONTEND=noninteractive
export CI=true
export TRAVIS=true
export CONTINUOUS_INTEGRATION=true
export USER=travis
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export RAILS_ENV=test
export RACK_ENV=test
export MERB_ENV=test
apt-get update && apt-get install -y tzdata libcurl4-openssl-dev cmake libpq-dev libxml2-dev postgresql-client
gem install bundler -v 2.0.1
# install
bin/setup
# script
bundle exec rake
