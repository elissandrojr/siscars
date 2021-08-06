#!/bin/bash

cd /siscar
rm -fr /siscar/tmp/*
gem install bundler
bundle update
RAILS_ENV=production 
bundle exec rails assets:precompile
rails s -b 0.0.0.0 -e production

