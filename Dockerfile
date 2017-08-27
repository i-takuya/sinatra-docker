FROM ruby:2.4

MAINTAINER takuya inagaki

# setup
RUN mkdir -p /root/app
ADD Gemfile /root/app
ADD start.sh /root/app
ADD /app/* /root/app

WORKDIR /root/app

EXPOSE 80

# install sinatra and shotgun
RUN bundle install
CMD ["./start.sh"]
