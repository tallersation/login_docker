FROM ubuntu:18.04
MAINTAINER "tallersation.ts@gmail.com"

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y curl

RUN git clone https://github.com/tallersation/autologin.git

RUN chmod 700 ./autologin/login.sh
CMD ./autologin/login.sh -D FOREGROUND

