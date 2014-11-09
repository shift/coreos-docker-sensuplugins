# Dockerfile for adding supervisor to a base image

FROM shift/coreos-ubuntu-supervisor:latest

MAINTAINER Vincent Palmer <shift-gh@someone.section.me>

RUN apt-get update && apt-get upgrade -y && apt-get install -y ruby git ruby-dev
RUN gem install sensu-plugin --no-rdoc --no-ri
RUN git clone https://github.com/sensu/sensu-community-plugins.git /srv/sensu-community-plugins

