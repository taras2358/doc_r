FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
ENV RAILS_ROOT /doc_rails
RUN mkdir $RAILS_ROOT
WORKDIR $RAILS_ROOT
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install
COPY . .
