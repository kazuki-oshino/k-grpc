# gRPC sample / Go Server / Go client / Flutter client

## pb generate command

`protoc --dart_out=grpc:./flutter_client/flutter_grpc_app/lib/api proto/pancake.proto timestamp.proto`

`protoc --go_out=./api/gen/api --go_opt=paths=source_relative \
    --go-grpc_out=./api/gen/api --go-grpc_opt=paths=source_relative \
    proto/pancake.proto`
