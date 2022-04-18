package handler

import (
	"context"
	"fmt"
	"math/rand"
	"sync"
	"time"

	"github.com/golang/protobuf/ptypes/timestamp"
	api "github.com/kazukios/k-grpc/api/gen/api/proto"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

type BakeHandler struct {
	report *report
	api.UnimplementedPancakeBakerServiceServer
}

type report struct {
	sync.Mutex
	data map[api.Pancake_Menu]int
}

func NewBakeHandler() *BakeHandler {
	return &BakeHandler{
		report: &report{
			data: make(map[api.Pancake_Menu]int),
		},
	}
}

//Bake は指定されたメニューのパンを焼いて、焼けたパンをResponseとして返します。
func (h *BakeHandler) Bake(
	ctx context.Context,
	req *api.BakeRequest,
) (*api.BakeResponse, error) {
	//バリデーション
	if req.Menu == api.Pancake_UNKNOWN || req.Menu > api.Pancake_SPICY_CURRY {
		return nil, status.Errorf(codes.InvalidArgument, "パンケーキを選んでください！")
	}

	fmt.Printf("Bake! : %v\n", req.Menu)

	//パンを焼いて、数を記録します
	now := time.Now()
	h.report.Lock()
	h.report.data[req.Menu] = h.report.data[req.Menu] + 1
	h.report.Unlock()

	//レスポンスを作って返します
	return &api.BakeResponse{
		Pancake: &api.Pancake{
			Menu:           req.Menu,
			ChefName:       "ko",
			TechnicalScore: rand.Float32(),
			CreateTime: &timestamp.Timestamp{
				Seconds: now.Unix(),
				Nanos:   int32(now.Nanosecond()),
			},
		},
	}, nil
}

//Report は、焼けたパンの数を報告します。
func (h *BakeHandler) Report(ctx context.Context, req *api.ReportRequest) (*api.ReportResponse, error) {
	//sliceを初期化
	counts := make([]*api.Report_BakeCount, 0)

	//レポートを作ります
	h.report.Lock()
	for k, v := range h.report.data {
		counts = append(counts, &api.Report_BakeCount{
			Menu:  k,
			Count: int32(v),
		})
	}
	h.report.Unlock()

	//レスポンスを作って返します
	return &api.ReportResponse{
		Report: &api.Report{
			BakeCounts: counts,
		},
	}, nil
}

func (h *BakeHandler) NotificationReport(req *api.NotificationRequest, stream api.PancakeBakerService_NotificationReportServer) error {

	fmt.Println("Request notification report.")
	for i := 0; i < 5; i++ {

		//sliceを初期化
		counts := make([]*api.Report_BakeCount, 0)

		//レポートを作ります
		for k, v := range h.report.data {
			counts = append(counts, &api.Report_BakeCount{
				Menu:  k,
				Count: int32(v),
			})
		}

		//レスポンスを作って返します
		if err := stream.Send(&api.NotificationResponse{
			Report: &api.Report{
				BakeCounts: counts,
			},
		}); err != nil {
			return err
		}

		time.Sleep(2 * time.Second)
	}
	return nil
}
