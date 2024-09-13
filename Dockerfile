FROM ruby

RUN apt-get update; apt-get upgrade

COPY requirements.txt .

RUN xargs -a requirements.txt apt install -y --no-install-recommends

RUN useradd --uid 1001 jrives
USER 1001
WORKDIR /home/jrives
COPY .vimrc /home/jrives
COPY Gemfile .
RUN bundle install
