///
//  Generated code. Do not modify.
//  source: proto/pancake.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use pancakeDescriptor instead')
const Pancake$json = const {
  '1': 'Pancake',
  '2': const [
    const {'1': 'chef_name', '3': 1, '4': 1, '5': 9, '10': 'chefName'},
    const {'1': 'menu', '3': 2, '4': 1, '5': 14, '6': '.pancake.maker.Pancake.Menu', '10': 'menu'},
    const {'1': 'technical_score', '3': 3, '4': 1, '5': 2, '10': 'technicalScore'},
    const {'1': 'create_time', '3': 15, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createTime'},
  ],
  '4': const [Pancake_Menu$json],
};

@$core.Deprecated('Use pancakeDescriptor instead')
const Pancake_Menu$json = const {
  '1': 'Menu',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'CLASSIC', '2': 1},
    const {'1': 'BANANA_AND_WHIP', '2': 2},
    const {'1': 'BACON_AND_CHEESE', '2': 3},
    const {'1': 'MIX_BERRY', '2': 4},
    const {'1': 'BAKED_MARSHMALLOW', '2': 5},
    const {'1': 'SPICY_CURRY', '2': 6},
  ],
};

/// Descriptor for `Pancake`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pancakeDescriptor = $convert.base64Decode('CgdQYW5jYWtlEhsKCWNoZWZfbmFtZRgBIAEoCVIIY2hlZk5hbWUSLwoEbWVudRgCIAEoDjIbLnBhbmNha2UubWFrZXIuUGFuY2FrZS5NZW51UgRtZW51EicKD3RlY2huaWNhbF9zY29yZRgDIAEoAlIOdGVjaG5pY2FsU2NvcmUSOwoLY3JlYXRlX3RpbWUYDyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgpjcmVhdGVUaW1lIoIBCgRNZW51EgsKB1VOS05PV04QABILCgdDTEFTU0lDEAESEwoPQkFOQU5BX0FORF9XSElQEAISFAoQQkFDT05fQU5EX0NIRUVTRRADEg0KCU1JWF9CRVJSWRAEEhUKEUJBS0VEX01BUlNITUFMTE9XEAUSDwoLU1BJQ1lfQ1VSUlkQBg==');
@$core.Deprecated('Use reportDescriptor instead')
const Report$json = const {
  '1': 'Report',
  '2': const [
    const {'1': 'bake_counts', '3': 1, '4': 3, '5': 11, '6': '.pancake.maker.Report.BakeCount', '10': 'bakeCounts'},
  ],
  '3': const [Report_BakeCount$json],
};

@$core.Deprecated('Use reportDescriptor instead')
const Report_BakeCount$json = const {
  '1': 'BakeCount',
  '2': const [
    const {'1': 'menu', '3': 1, '4': 1, '5': 14, '6': '.pancake.maker.Pancake.Menu', '10': 'menu'},
    const {'1': 'count', '3': 2, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `Report`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportDescriptor = $convert.base64Decode('CgZSZXBvcnQSQAoLYmFrZV9jb3VudHMYASADKAsyHy5wYW5jYWtlLm1ha2VyLlJlcG9ydC5CYWtlQ291bnRSCmJha2VDb3VudHMaUgoJQmFrZUNvdW50Ei8KBG1lbnUYASABKA4yGy5wYW5jYWtlLm1ha2VyLlBhbmNha2UuTWVudVIEbWVudRIUCgVjb3VudBgCIAEoBVIFY291bnQ=');
@$core.Deprecated('Use bakeRequestDescriptor instead')
const BakeRequest$json = const {
  '1': 'BakeRequest',
  '2': const [
    const {'1': 'menu', '3': 1, '4': 1, '5': 14, '6': '.pancake.maker.Pancake.Menu', '10': 'menu'},
  ],
};

/// Descriptor for `BakeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bakeRequestDescriptor = $convert.base64Decode('CgtCYWtlUmVxdWVzdBIvCgRtZW51GAEgASgOMhsucGFuY2FrZS5tYWtlci5QYW5jYWtlLk1lbnVSBG1lbnU=');
@$core.Deprecated('Use bakeResponseDescriptor instead')
const BakeResponse$json = const {
  '1': 'BakeResponse',
  '2': const [
    const {'1': 'pancake', '3': 1, '4': 1, '5': 11, '6': '.pancake.maker.Pancake', '10': 'pancake'},
  ],
};

/// Descriptor for `BakeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bakeResponseDescriptor = $convert.base64Decode('CgxCYWtlUmVzcG9uc2USMAoHcGFuY2FrZRgBIAEoCzIWLnBhbmNha2UubWFrZXIuUGFuY2FrZVIHcGFuY2FrZQ==');
@$core.Deprecated('Use reportRequestDescriptor instead')
const ReportRequest$json = const {
  '1': 'ReportRequest',
};

/// Descriptor for `ReportRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportRequestDescriptor = $convert.base64Decode('Cg1SZXBvcnRSZXF1ZXN0');
@$core.Deprecated('Use reportResponseDescriptor instead')
const ReportResponse$json = const {
  '1': 'ReportResponse',
  '2': const [
    const {'1': 'report', '3': 1, '4': 1, '5': 11, '6': '.pancake.maker.Report', '10': 'report'},
  ],
};

/// Descriptor for `ReportResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportResponseDescriptor = $convert.base64Decode('Cg5SZXBvcnRSZXNwb25zZRItCgZyZXBvcnQYASABKAsyFS5wYW5jYWtlLm1ha2VyLlJlcG9ydFIGcmVwb3J0');
