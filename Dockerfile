FROM ruby:2.3.1
MAINTAINER babak@cloud66.com

RUN apt-get update -qq && apt-get install -y build-essential nodejs

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install

ADD . $APP_HOME
