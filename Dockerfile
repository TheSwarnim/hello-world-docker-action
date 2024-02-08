FROM golang:1.17

WORKDIR /app

ADD . /app

RUN go get -d -v
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o hello-world .

CMD sh -c 'pwd; ls -ltrh; ./hello-world'
