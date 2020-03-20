FROM ruby:2.7

RUN apt-get update -qq && \
    apt-get install -y \
      build-essential \
      libpq-dev \
      libsqlite3-dev

RUN mkdir /work
WORKDIR /work
