FROM ruby:2.7.7
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /myapp
WORKDIR /myapp
COPY ./src/Gemfile /myapp/Gemfile
COPY ./src/Gemfile.lock /myapp/Gemfile.lock
COPY ./docker/app/entrypoint.sh /usr/bin/
RUN bundle config set path 'vendor/bundle'
RUN bundle install
RUN chmod +x /usr/bin/entrypoint.sh
RUN apt install -y sudo

ARG USERNAME=user
ARG GROUPNAME=user
ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID $GROUPNAME \
    && useradd -m -s /bin/bash -u $UID -g $GID $USERNAME
RUN chown -R 1000:1000 /myapp