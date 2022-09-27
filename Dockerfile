FROM golang:1.16-alpine

WORKDIR .

COPY hello.go .

RUN go build -o hello hello.go

EXPOSE 9002

CMD ["./hello"]
