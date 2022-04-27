FROM golang:1.18-alpine as dev

RUN apk update && apk add git

WORKDIR /go/src/app

CMD [ "go", "run", "server/server.go" ]


FROM golang:1.18.1-bullseye as builder

WORKDIR /opt/app

COPY go.mod go.sum ./

RUN go mod download

COPY ./server ./server

COPY ./api ./api

RUN go build -o "grpc_server" ./server


FROM gcr.io/distroless/base-debian11 as prod

COPY --from=builder /opt/app/grpc_server /grpc_server

CMD [ "/grpc_server" ]
