FROM jekyll/jekyll:latest

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN chmod -R 777 ./
RUN gem install bundler
RUN bundle install

ENV PORT 4000
EXPOSE $PORT

CMD bundle exec jekyll serve --force_polling -H 0.0.0.0 -P $PORT
