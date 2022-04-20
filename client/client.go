package main

import (
	"context"
	"flag"
	"io"
	"log"

	pb "github.com/kazukios/k-grpc/api/gen/api/proto"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
)

var (
	addr = flag.String("addr", "localhost:50058", "the address to connect to")
)

func main() {
	flag.Parse()
	conn, err := grpc.Dial(*addr, grpc.WithTransportCredentials(insecure.NewCredentials()))
	if err != nil {
		log.Fatalf("did not connect: %v", err)
	}
	defer conn.Close()

	c := pb.NewPancakeBakerServiceClient(conn)

	ctx := context.Background()

	r, err := c.Bake(ctx, &pb.BakeRequest{Menu: pb.Pancake_CLASSIC})

	if err != nil {
		log.Fatalf("could not hello: %v", err)
	}
	log.Printf("Bake: %s\n", r.GetPancake())

	r, err = c.Bake(ctx, &pb.BakeRequest{Menu: pb.Pancake_BAKED_MARSHMALLOW})

	if err != nil {
		log.Fatalf("could not hello: %v", err)
	}
	log.Printf("Bake: %s\n", r.GetPancake())

	re, err := c.Report(ctx, &pb.ReportRequest{})

	log.Printf("Report: %s", re)

	stream, err := c.NotificationReport(ctx, &pb.NotificationRequest{})
	if err != nil {
		log.Fatalf("could not hello: %v", err)
	}
	for {
		reply, err := stream.Recv()
		if err == io.EOF {
			break
		}
		if err != nil {
			log.Fatalf("could not hello: %v", err)
		}
		log.Println(reply.Report)
	}
}
