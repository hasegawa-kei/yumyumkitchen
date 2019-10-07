FROM ruby:2.4.5
RUN apt-get update -qq && apt-get install -y build-essential nodejs
RUN mkdir /yumyumkitchen
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
COPY . /app
