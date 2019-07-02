FROM ubuntu:19.04

RUN apt-get -y update && apt-get -y install git sudo vim whois ruby

RUN groupadd -r deploy && useradd -m -u 1001 -r -g deploy deploy
RUN usermod -aG sudo deploy

USER deploy

WORKDIR /home/deploy

COPY transform_deploy_key.rb /home/deploy
