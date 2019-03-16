FROM golang:1.8 as builder
WORKDIR /go/src/go-practice
WORKDIR /go/src/github.com/sk8metal/go-practice
ENV CGO_ENABLED=0
ENV GOOS=linux
ENV GOARCH=amd64

COPY . .
RUN go get -d -v ./...
RUN go install -v ./...
RUN go build -a -installsuffix cgo -o app .

FROM alpine:latest  
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY --from=builder /go/src/github.com/sk8metal/go-practice/app /app
CMD ["/app"]
