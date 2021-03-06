FROM alpine:3.15

LABEL author="Michele Cosi" 
LABEL email="cosi@arizona (dot) edu"
LABEL date_created="2022-05-16"

RUN apk update && apk upgrade --available
RUN apk add vim fortune

ENV PATH=/usr/games:${PATH}

ENV LC_ALL=C

ENTRYPOINT fortune