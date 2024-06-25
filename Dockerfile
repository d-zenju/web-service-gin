FROM golang:1.22.4-alpine

WORKDIR /app
COPY ./app /app

# web-service-jinをビルドする
RUN go mod download
RUN go build -o app app.go

# web-service-jinを実行する
CMD ["./app"]
