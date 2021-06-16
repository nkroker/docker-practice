# For using base image
FROM ruby:2.7

# For adding system dependencis
RUN apt update
RUN apt install build-essential nodejs -y

# For app setup
# Creating and defining work directoy
RUN mkdir /app
WORKDIR /app


# Moving files to docker container image
COPY . /app
RUN bundle install

# Exposing socket port and defining main process Command
# EXPOSE 3000
CMD bundle exec rails s -b 0.0.0.0 -p 3000
