# docker build -t rails-tutorial:1.0 ./
FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /rails-tutorial
WORKDIR /rails-tutorial
ADD Gemfile /rails-tutorial/Gemfile
ADD Gemfile.lock /rails-tutorial/Gemfile.lock
RUN bundle install
ADD . /rails-tutorial