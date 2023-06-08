FROM python:3-alpine3.18

RUN apk add libxml2-dev libxslt-dev gcc python-dev musl-dev \
    && pip3 install feedparser lxml sentry_sdk credentials sentry_sdk bs4 requests

COPY . /code

WORKDIR /code/data
CMD python updater.py -f