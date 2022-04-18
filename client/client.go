package main

import (
	"context"
	"flag"
	"log"
	"time"

	pb "github.com/kazukios/k-grpc/api/gen/api/proto"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
)

var (
	addr = flag.String("addr", "localhost:50051", "the address to connect to")
)

func main() {
	flag.Parse()
	conn, err := grpc.Dial(*addr, grpc.WithTransportCredentials(insecure.NewCredentials()))
	if err != nil {
		log.Fatalf("did not connect: %v", err)
	}
	defer conn.Close()

	c := pb.NewPancakeBakerServiceClient(conn)

	ctx, cancel := context.WithTimeout(context.Background(), time.Second)
	defer cancel()

	// greets := make([]pb.Greet, 3)
	// greets[0] = pb.Greet_HELLO
	// greets[1] = pb.Greet_WHATS_UP
	// greets[2] = pb.Greet_HELLO

	r, err := c.Bake(ctx, &pb.BakeRequest{Menu: pb.Pancake_CLASSIC})

	if err != nil {
		log.Fatalf("could not hello: %v", err)
	}
	log.Printf("Bake: %s\n", r.GetPancake())

	r, err = c.Bake(ctx, &pb.BakeRequest{Menu: pb.Pancake_UNKNOWN})

	if err != nil {
		log.Fatalf("could not hello: %v", err)
	}
	log.Printf("Bake: %s\n", r.GetPancake())

	re, err := c.Report(ctx, &pb.ReportRequest{})

	log.Printf("Report: %s", re)
}
