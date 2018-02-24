FROM golang:1.7.3-alpine
MAINTAINER Jesse .C. Okeya <Jesseokeya@gmail.com>

ENV SOURCES /go/src/github.com/jesseokeya/go_restapi/

COPY . ${SOURCES}

RUN cd ${SOURCES} && CGO_ENABLED=1 go install

ENV PORT 8080
EXPOSE 8080

ENTRYPOINT go_restapi
