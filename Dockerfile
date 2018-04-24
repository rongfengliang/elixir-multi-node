FROM elixir:1.6.4
WORKDIR /app
COPY . /app/
ENV MIX_ENV=prod
ENV RELX_REPLACE_OS_VARS=true
ENV HEX_HTTP_CONCURRENCY=3
ENV HEX_HTTP_TIMEOUT=1200
RUN mix local.hex --force && \
    mix local.rebar --force && \
    mix deps.get && \
    mix deps.compile && \
    mix release --env=prod && \
    mix escript.build
ENTRYPOINT [ "_build/prod/rel/clusterdemo/bin/clusterdemo","console"]