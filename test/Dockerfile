#FROM ubuntu:14.04
#MAINTAINER Nathaniel Hoag, info@nathanielhoag.com

#RUN apt-get update && \
#  apt-get install -y curl
#RUN /sbin/ip route|awk '/default/ { print $3 }'
#RUN HOST_IP=/sbin/ip route|awk '/default/ { print $3 }'
#RUN echo HOST_IP
#RUN curl http:///${HOST_IP}:4000
FROM python:3.5-alpine

ENV PIP_INDEX_URL=http://172.17.0.1:4000/simple/
ENV PIP_TRUSTED_HOST=172.17.0.1
RUN pip install django==1.9.5
RUN pip install flask
RUN pip install pyramid
RUN pip install bottle
