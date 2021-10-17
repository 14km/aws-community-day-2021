FROM golang:alpine as builder

ENV CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64

EXPOSE 1323

# Build the Go app
RUN go build -o main .

# Run the executable
CMD ["./main"]