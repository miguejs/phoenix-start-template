# Elixir Base Image
FROM elixir:1.5.2

ENV DEBIAN_FRONTEND=nonintercative

RUN mix local.hex --force

RUN mix local.rebar --force

RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

WORKDIR /usr/src/app
ADD . /usr/src/app
