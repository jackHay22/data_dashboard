FROM ruby:3.0.1

RUN apt-get update -qq && apt-get install -y nodejs

RUN mkdir /dashboard
WORKDIR /dashboard
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
