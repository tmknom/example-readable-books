FROM adoptopenjdk/openjdk8:alpine-slim

ARG VERSION="1.10.1"
ARG REDPEN_URL="https://github.com/redpen-cc/redpen/releases/download"
ARG DOWNLOAD_URL="${REDPEN_URL}/redpen-${VERSION}/redpen-${VERSION}.tar.gz"

RUN set -x && \
    wget -q ${DOWNLOAD_URL} -O /tmp/redpen.tar.gz && \
    tar -xzvf /tmp/redpen.tar.gz && \
    cp -av redpen-distribution-${VERSION}/* /usr/local && \
    rm -rf redpen-distribution-${VERSION} /tmp/redpen.tar.gz

COPY logback.xml /usr/local/conf/logback.xml

WORKDIR /work
ENTRYPOINT ["/usr/local/bin/redpen"]
CMD ["--help"]
