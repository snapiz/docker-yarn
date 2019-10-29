FROM alpine:latest

RUN apk update
RUN apk add nodejs curl bash gnupg

RUN touch $HOME/.profile

RUN curl -o- -L https://yarnpkg.com/install.sh | bash

RUN mkdir -p /app

RUN ln -s /root/.yarn/bin/yarn /usr/bin/yarn
