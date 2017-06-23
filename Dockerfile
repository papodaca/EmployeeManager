FROM ruby:2.4
MAINTAINER papodaca@gmail.com

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -

RUN apt-get install -y build-essential libxml2-dev libxslt1-dev libpq-dev nodejs && rm -rf /var/cache/apt

RUN mkdir /app
WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

RUN gem install bundler && bundle install --jobs 20 --retry 5

ENTRYPOINT ./start.sh
