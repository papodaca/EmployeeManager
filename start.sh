#!/bin/bash
sleep 2 # wait for postgres to be ready
bundle exec rails db:setup
bundle exec rails db:migrate
exec bundle exec rails s -b 0.0.0.0