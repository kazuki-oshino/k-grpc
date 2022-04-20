package handler

import (
	"context"
	"database/sql"
	"fmt"
	"log"
	"math/rand"
	"sync"
	"time"

	"github.com/golang/protobuf/ptypes/timestamp"
	api "github.com/kazukios/k-grpc/api/gen/api/proto"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	_ "github.com/go-sql-driver/mysql"
)

type BakeHandler struct {
	report *report
	api.UnimplementedPancakeBakerServiceServer
}

type report struct {
	sync.Mutex
	data map[api.Pancake_Menu]int
}

type bakery struct {
	id         int
	bake_type  int
	created_at time.Time
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
	// Database に登録する
	db, err := connectDB()
	defer db.Close()
	if err != nil {
		log.Fatalln("db couldn't open.")
	}

	stmt, err := db.Prepare("INSERT INTO bakery(bake_type, created_at) VALUES(?, ?)")
	if err != nil {
		log.Fatalln("insert statement create failed.")
	}
	defer stmt.Close()

	_, err = stmt.Exec(req.Menu.Number(), now)
	if err != nil {
		log.Fatalln("insert failed.")
	}
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
	// 焼けたパンの数を取得
	counts, err := makeReport()
	if err != nil {
		return nil, err
	}

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

		// 焼けたパンの数を取得
		counts, err := makeReport()
		if err != nil {
			return err
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

func makeReport() ([]*api.Report_BakeCount, error) {
	//sliceを初期化
	counts := make([]*api.Report_BakeCount, 0)

	// Database アクセス
	db, err := connectDB()
	defer db.Close()
	if err != nil {
		log.Fatalln("db couldn't open.")
	}

	rows, err := db.Query("SELECT * FROM bakery")
	if err != nil {
		log.Fatalln("bakery table select failed.")
	}
	defer rows.Close()

	tmp := make(map[api.Pancake_Menu]int)
	for rows.Next() {
		var r bakery
		err := rows.Scan(&r.id, &r.bake_type, &r.created_at)
		if err != nil {
			log.Println(err)
			return nil, err
		}
		if c, ok := tmp[api.Pancake_Menu(r.bake_type)]; ok {
			tmp[api.Pancake_Menu(r.bake_type)] = c + 1
		} else {
			tmp[api.Pancake_Menu(r.bake_type)] = 1
		}
	}

	//レポートを作ります
	for k, v := range tmp {
		counts = append(counts, &api.Report_BakeCount{
			Menu:  k,
			Count: int32(v),
		})
	}
	return counts, nil
}

func connectDB() (*sql.DB, error) {
	db, err := sql.Open("mysql", "hoge:password@tcp(db:3306)/bakery?parseTime=true")
	if err != nil {
		return nil, err
	}
	db.SetConnMaxLifetime(time.Second * 5)
	db.SetMaxOpenConns(10)
	db.SetMaxIdleConns(10)
	return db, nil
}
