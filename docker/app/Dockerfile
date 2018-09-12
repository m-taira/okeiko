FROM ruby:2.5.1

RUN apt-get update -qq && apt-get install -y build-essential default-libmysqlclient-dev nodejs sudo

# yarnパッケージ管理ツールインストール
RUN apt-get update && apt-get install -y curl apt-transport-https wget && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

# Chrome
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - \
    && sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list' \
    && apt-get update \
    && apt-get install -y google-chrome-stable

RUN apt-get install -y fonts-ipafont-gothic fonts-ipafont-mincho

# Remove cache & workfile
RUN rm -rf /var/lib/apt/lists/* /var/cache/apt/*
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