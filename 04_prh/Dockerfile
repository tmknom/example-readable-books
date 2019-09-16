FROM node:12.9.1-alpine

RUN set -x && \
    npm install -g prh@5.4.4 && \
    npm cache clean --force

WORKDIR /work
ENTRYPOINT ["/usr/local/bin/prh"]
CMD ["--help"]
