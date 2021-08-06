FROM ruby:2.6.3


RUN apt-get update && apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y postgresql-client --no-install-recommends && rm -rf /var/lib/apt/lists/*


ENV LC_ALL pt_BR.UTF-8
ENV LANG pt_BR.UTF-8
ENV LANGUAGE pt_BR.UTF-8

RUN mkdir -p /siscar
WORKDIR /siscar

RUN gem install rails
RUN gem install nokogiri

COPY . /siscar

COPY start.sh /

EXPOSE 3000

CMD ["/bin/bash", "/start.sh"]
