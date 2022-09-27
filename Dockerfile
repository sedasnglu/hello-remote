FROM golang:1.16-alpine

WORKDIR /hello

COPY /hello/hello.go .

RUN go build -o hello hello.go

EXPOSE 8080

CMD ["./hello"]
