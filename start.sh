#!/bin/bash
until nc -z postgres 5432
  sleep 1
done
bundle exec rails db:setup
bundle exec rails db:migrate
bundle exec rails db:seed
exec bundle exec rails s -b 0.0.0.0
