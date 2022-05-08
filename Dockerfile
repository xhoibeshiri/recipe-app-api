FROM python:3.10-alpine
MAINTAINER Xhoi Beshiri

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D xhoi
USER xhoi
