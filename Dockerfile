FROM golang:alpine as builder

WORKDIR /usr/src/app
COPY . .

ENV CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64

RUN go get -d -v ./...
RUN go install -v ./...

EXPOSE 3000

# Build the Go app
RUN go build -o main .

# Run the executable
CMD ["./main"]