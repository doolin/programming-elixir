FROM bitwalker/alpine-elixir:1.5 as build
# Could also use the following:
# FROM elixir:latest

# References:
#
# https://pspdfkit.com/blog/2018/how-to-run-your-phoenix-application-with-docker/
# https://medium.com/@pentacent/getting-started-with-elixir-docker-982e2a16213c

RUN mkdir /app
COPY chapter1/testem.exs /app/testem.exs
WORKDIR /app

RUN /app/testem.exs
