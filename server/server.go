package main

import (
	"flag"
	"fmt"
	"log"
	"net"

	pb "github.com/kazukios/k-grpc/api/gen/api/proto"
	"github.com/kazukios/k-grpc/server/handler"
	"google.golang.org/grpc"
)

var (
	port = flag.Int("port", 50051, "The Server Port.")
)

func main() {
	flag.Parse()
	lis, err := net.Listen("tcp", fmt.Sprintf(":%d", *port))
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}
	s := grpc.NewServer()
	pb.RegisterPancakeBakerServiceServer(s, handler.NewBakeHandler())
	log.Printf("server listening at %v", lis.Addr())
	if err := s.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %v", err)
	}
}
