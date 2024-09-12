FROM ruby
WORKDIR /usr/local/app

RUN apt-get update; apt-get upgrade
COPY requirements.txt ./
RUN apt-get install -y $(cat requirements.txt)
