FROM ruby:2.6.3

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client yarn

RUN mkdir /toy_app

WORKDIR /toy_app

ADD Gemfile /toy_app/Gemfile
ADD Gemfile.lock /toy_app/Gemfile.lock

RUN bundle install
ADD . /toy_app