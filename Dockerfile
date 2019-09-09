FROM ruby:2.6

RUN apt-get update -qq && apt-get install -y build-essential

WORKDIR /usr/share/app/

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

EXPOSE 4567

CMD ["bundle","exec","rackup","--host","0.0.0.0","-p","4567"]