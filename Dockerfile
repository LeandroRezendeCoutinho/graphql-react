FROM 2.7-alpine

RUN apk update && \
    apk add --no-cache build-base nodejs tzdata postgresql-dev autoconf pkgconfig automake

RUN mkdir /app
WORKDIR /app

COPY . /app

EXPOSE 3000