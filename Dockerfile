FROM ruby:2.7

RUN apt-get update -qq && \
    apt-get install -y \
      apt-transport-https \
      build-essential \
      curl \
      libpq-dev \
      libsqlite3-dev \
      wget

# yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && \
    apt-get install -y yarn

# node.js
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
    apt-get update && \
    apt-get install -y nodejs

RUN mkdir /work
WORKDIR /work
