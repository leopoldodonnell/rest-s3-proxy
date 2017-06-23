FROM golang:1.8

ENV GOPATH /go
ENV PATH "$GOPATH/bin:$PATH"

# RUN go get -u github.com/leopoldodonnell/clairctl
COPY . /go/src/github.com/leopoldodonnell/rest-s3-proxy
WORKDIR /go/src/github.com/leopoldodonnell/rest-s3-proxy
RUN go install && rm -rf /go/src

ENTRYPOINT [ "rest-s3-proxy" ]
