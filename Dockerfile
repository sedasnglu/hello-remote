FROM golang:1.16-alpine

WORKDIR .

COPY hello.go .

RUN go build -o hello hello.go

EXPOSE 8080

CMD ["./hello"]
