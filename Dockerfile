ARG GO_VERSION=1.14
FROM golang:${GO_VERSION}-alpine AS builder
RUN apk update && apk add make git
WORKDIR /calert/
COPY ./ ./
ENV CGO_ENABLED=0 GOOS=linux
RUN make build
