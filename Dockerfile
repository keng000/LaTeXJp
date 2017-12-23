
FROM ubuntu:16.04

MAINTAINER Kengo Miyakawa
LABEL version="1.0"
LABEL description="Image for LaTeX environment"

RUN apt-get clean
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y vim
RUN apt-get install -y software-properties-common
RUN apt-add-repository ppa:texlive-backports/ppa
RUN apt-get install -y texlive-lang-cjk
RUN apt-get install -y locales locales-all
RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8

RUN apt-get -qy autoremove

ADD latex /latex
