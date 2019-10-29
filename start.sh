#!/bin/bash

cd /app
rm -fr /app/tmp/*
gem install bundler
bundle update
rails assets:precompile
rails s -b 0.0.0.0 -e development
