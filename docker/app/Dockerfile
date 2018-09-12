FROM ruby:2.5.1

RUN apt-get update -qq && apt-get install -y build-essential default-libmysqlclient-dev nodejs sudo

RUN groupadd --gid 1000 okeiko \
    && useradd --uid 1000 --gid okeiko --shell /bin/bash --create-home okeiko

RUN echo "okeiko ALL=NOPASSWD: ALL" >/etc/sudoers

RUN mkdir /okeiko
WORKDIR /okeiko
ADD Gemfile .
ADD Gemfile.lock .

ENV BUNDLE_JOBS=4
RUN bundle install

# ADD package.json .
# RUN yarn install

USER okeiko