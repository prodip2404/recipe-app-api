FROM python:3.6-alpine
MAINTAINER prodip mallick


ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
# COPY ./app /app

RUN adduser -D dockuser
RUN chown dockuser:dockuser -R /app/
USER dockuser