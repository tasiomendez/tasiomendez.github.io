FROM jekyll/jekyll:latest

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN chmod -R 777 ./
RUN gem install bundler
RUN bundle install

ENV PORT 4000
EXPOSE $PORT

CMD bundle exec jekyll serve --force_polling -H 0.0.0.0 -P $PORT

# docker run --name github.io -p 4000:4000 -v /home/tmendez/Documents/github.io/:/usr/src/app tasiomendez/github.io:latest
