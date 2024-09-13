FROM ruby
WORKDIR /usr/local/app

RUN apt-get update; apt-get upgrade
COPY requirements.txt ./
COPY .vimrc /root/.vimrc
RUN apt install -y --no-install-recommends < requirements.txt
