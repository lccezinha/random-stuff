FROM ubuntu:16.04

MAINTAINER Luiz Cezer <lccezinha@gmail.com>

RUN apt-get update
RUN apt-get install -y python python-pip nginx
RUN pip install virtualenv gunicorn supervisor
RUN echo "working..."
