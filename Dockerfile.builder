FROM golang:alpine

RUN apk add -U git make protobuf

# Install additional go commands (go get requires git, which is installed above)
RUN go get -u github.com/golang/protobuf/protoc-gen-go && \
    go get -u github.com/golang/lint/golint
