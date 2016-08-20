FROM ruby:2.3.1

RUN adduser --disabled-password --gecos '' blog

WORKDIR /home/blog/app
COPY . .
RUN chown -R blog:blog .

USER blog
RUN bundle

CMD ["jekyll", "serve", "-H", "0.0.0.0"]
