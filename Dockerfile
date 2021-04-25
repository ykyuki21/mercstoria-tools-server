FROM ruby:2.7.1

ENV LANG=C.UTF-8 \
    TZ=Asia/Tokyo \
    ROOT=/app

RUN apt-get update -qq && apt-get install -y \
    postgresql-client \
    git

WORKDIR $ROOT

RUN gem install bundler

COPY Gemfile $ROOT
COPY Gemfile.lock $ROOT

RUN bundle install -j4

COPY . $ROOT

CMD ["rails", "server", "-b", "0.0.0.0"]
