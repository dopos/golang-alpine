FROM ghcr.io/dopos/docker-alpine:v3.17.2
ARG TARGETARCH
RUN apk add --no-cache git make musl-dev go

ENV GOPATH /go
ENV PATH $GOPATH/bin:$PATH
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR $GOPATH

RUN echo "I am running for $TARGETARCH"

RUN echo "$TARGETARCH" > /golang.arch

