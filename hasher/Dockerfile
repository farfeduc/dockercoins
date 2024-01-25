FROM ruby:3.3-alpine

WORKDIR /usr/app/

RUN apk add --update build-base
RUN gem install rackup sinatra
COPY hasher.rb /usr/app/

ENV UID=12345 \
    GID=23456

RUN addgroup -g "$GID" docker && \
    adduser \
    --disabled-password \
    --gecos "" \
    --home "$(pwd)" \
    --ingroup docker \
    --no-create-home \
    --uid "$UID" \
    docker

USER docker
ENTRYPOINT ["ruby", "hasher.rb"]
EXPOSE 8080
HEALTHCHECK \
  --interval=1s --timeout=2s --retries=3 --start-period=1s \
  CMD wget --spider http://localhost:8080/
