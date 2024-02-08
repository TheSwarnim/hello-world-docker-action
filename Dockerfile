FROM golang:1.21.5

WORKDIR /app

ADD . /app

RUN go get -d -v
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o hello-world .

ENTRYPOINT ["./hello-world"]
