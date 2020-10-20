FROM node:8-alpine

RUN apk add --no-cache build-base file nasm autoconf ruby ruby-ffi automake zlib-dev libtool curl

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash /dev/stdin

RUN gem install sass compass 

RUN export NVM_DIR="/root/.nvm" \
    && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" \
    && npm install -g gulp-cli
