FROM python:3.8-slim
LABEL maintainer="blacklacost@gmail.com"

# Рекомендуется при использование python в docker
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install --no-cache-dir -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN useradd -ms /bin/bash user
USER user