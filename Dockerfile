FROM ruby:2.4.2
MAINTAINER david.roy@codebunny.scot

ENV REFRESHED_AT 2017-12-17

# Update repo
RUN apt-get -y update

RUN mkdir -p /var/www/bunny

# Copy the app code
COPY . /var/www/bunny

# Change workdir
WORKDIR /var/www/bunny

# Expose port 5000
EXPOSE 5000

# Gem setup
RUN gem install foreman
RUN gem install bundler
RUN bundle install

# Run goliath in production mode
CMD ["/bin/bash","-c", "bundle exec foreman start"]
