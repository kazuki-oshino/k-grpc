///
//  Generated code. Do not modify.
//  source: proto/pancake.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'pancake.pb.dart' as $0;
export 'pancake.pb.dart';

class PancakeBakerServiceClient extends $grpc.Client {
  static final _$bake = $grpc.ClientMethod<$0.BakeRequest, $0.BakeResponse>(
      '/pancake.maker.PancakeBakerService/Bake',
      ($0.BakeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BakeResponse.fromBuffer(value));
  static final _$report =
      $grpc.ClientMethod<$0.ReportRequest, $0.ReportResponse>(
          '/pancake.maker.PancakeBakerService/Report',
          ($0.ReportRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ReportResponse.fromBuffer(value));

  PancakeBakerServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.BakeResponse> bake($0.BakeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$bake, request, options: options);
  }

  $grpc.ResponseFuture<$0.ReportResponse> report($0.ReportRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$report, request, options: options);
  }
}

abstract class PancakeBakerServiceBase extends $grpc.Service {
  $core.String get $name => 'pancake.maker.PancakeBakerService';

  PancakeBakerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.BakeRequest, $0.BakeResponse>(
        'Bake',
        bake_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BakeRequest.fromBuffer(value),
        ($0.BakeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReportRequest, $0.ReportResponse>(
        'Report',
        report_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ReportRequest.fromBuffer(value),
        ($0.ReportResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.BakeResponse> bake_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BakeRequest> request) async {
    return bake(call, await request);
  }

  $async.Future<$0.ReportResponse> report_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ReportRequest> request) async {
    return report(call, await request);
  }

  $async.Future<$0.BakeResponse> bake(
      $grpc.ServiceCall call, $0.BakeRequest request);
  $async.Future<$0.ReportResponse> report(
      $grpc.ServiceCall call, $0.ReportRequest request);
}
