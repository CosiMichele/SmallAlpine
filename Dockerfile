FROM alpine:3.15

LABEL author="Michele Cosi" 
LABEL email="cosi@arizona (dot) edu"
LABEL date_created="2022-05-16"

RUN apt-get update && apt-get install -y fortune cowsay lolcat

ENV PATH=/usr/games:${PATH}

ENV LC_ALL=C

ENTRYPOINT fortune | cowsay | lolcat