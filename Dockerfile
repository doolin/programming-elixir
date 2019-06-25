FROM bitwalker/alpine-elixir:1.5 as build

COPY chapter1/testem.exs ./testem.exs

RUN ./testem.exs
