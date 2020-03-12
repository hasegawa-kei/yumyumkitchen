FROM ruby:2.5.3

RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y mysql-client --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /yumyumkitchen
WORKDIR /yumyumkitchen

ADD Gemfile /yumyumkitchen/Gemfile
ADD Gemfile.lock /yumyumkitchen/Gemfile.lock

RUN bundle install

ADD . /yumyumkitchen
