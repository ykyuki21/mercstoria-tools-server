FROM ruby:2.7.1

ENV LANG=ja_JP.UTF-8 \
    TZ=Asia/Tokyo \
    ROOT=/app

RUN apt-get update -qq && apt-get install -y postgresql-client

WORKDIR $ROOT

RUN gem install bundler

WORKDIR /app

COPY Gemfile $ROOT
COPY Gemfile.lock $ROOT

RUN bundle install

COPY . $ROOT

CMD ["bin/rails", "server", "-b", "0.0.0.0"]