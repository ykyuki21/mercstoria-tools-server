FROM ruby:2.7.1

ENV LANG=C.UTF-8 \
    TZ=Asia/Tokyo \
    ROOT=/app

RUN apt-get update -qq && apt-get install -y \
    postgresql-client \
    git

RUN gem install bundler

WORKDIR $ROOT

CMD ["rails", "server", "-b", "0.0.0.0"]
