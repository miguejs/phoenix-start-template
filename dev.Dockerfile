# Elixir Base Image
FROM elixir:1.5.2

ENV DEBIAN_FRONTEND=nonintercative

RUN mix local.hex --force

RUN mix local.rebar --force

RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

# Install NodeJS 6.x and the NPM
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y -q nodejs

WORKDIR /usr/src/app
ADD . /usr/src/app
