FROM ruby:3.3-alpine
RUN apk add --update build-base
RUN gem install rackup sinatra
COPY hasher.rb /
ENTRYPOINT ["ruby", "hasher.rb"]
EXPOSE 80
HEALTHCHECK \
  --interval=1s --timeout=2s --retries=3 --start-period=1s \
  CMD wget --spider http://localhost:80/
