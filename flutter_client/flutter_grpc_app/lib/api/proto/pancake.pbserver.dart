///
//  Generated code. Do not modify.
//  source: proto/pancake.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'pancake.pb.dart' as $1;
import 'pancake.pbjson.dart';

export 'pancake.pb.dart';

abstract class PancakeBakerServiceBase extends $pb.GeneratedService {
  $async.Future<$1.BakeResponse> bake($pb.ServerContext ctx, $1.BakeRequest request);
  $async.Future<$1.ReportResponse> report($pb.ServerContext ctx, $1.ReportRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'Bake': return $1.BakeRequest();
      case 'Report': return $1.ReportRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'Bake': return this.bake(ctx, request as $1.BakeRequest);
      case 'Report': return this.report(ctx, request as $1.ReportRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => PancakeBakerServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => PancakeBakerServiceBase$messageJson;
}

