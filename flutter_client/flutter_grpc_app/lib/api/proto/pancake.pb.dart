///
//  Generated code. Do not modify.
//  source: proto/pancake.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'timestamp.pb.dart' as $1;

import 'pancake.pbenum.dart';

export 'pancake.pbenum.dart';

class Pancake extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Pancake',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pancake.maker'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'chefName')
    ..e<Pancake_Menu>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'menu',
        $pb.PbFieldType.OE,
        defaultOrMaker: Pancake_Menu.UNKNOWN,
        valueOf: Pancake_Menu.valueOf,
        enumValues: Pancake_Menu.values)
    ..a<$core.double>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'technicalScore',
        $pb.PbFieldType.OF)
    ..aOM<$1.Timestamp>(
        15,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'createTime',
        subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false;

  Pancake._() : super();
  factory Pancake({
    $core.String? chefName,
    Pancake_Menu? menu,
    $core.double? technicalScore,
    $1.Timestamp? createTime,
  }) {
    final _result = create();
    if (chefName != null) {
      _result.chefName = chefName;
    }
    if (menu != null) {
      _result.menu = menu;
    }
    if (technicalScore != null) {
      _result.technicalScore = technicalScore;
    }
    if (createTime != null) {
      _result.createTime = createTime;
    }
    return _result;
  }
  factory Pancake.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Pancake.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Pancake clone() => Pancake()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Pancake copyWith(void Function(Pancake) updates) =>
      super.copyWith((message) => updates(message as Pancake))
          as Pancake; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Pancake create() => Pancake._();
  Pancake createEmptyInstance() => create();
  static $pb.PbList<Pancake> createRepeated() => $pb.PbList<Pancake>();
  @$core.pragma('dart2js:noInline')
  static Pancake getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pancake>(create);
  static Pancake? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get chefName => $_getSZ(0);
  @$pb.TagNumber(1)
  set chefName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChefName() => $_has(0);
  @$pb.TagNumber(1)
  void clearChefName() => clearField(1);

  @$pb.TagNumber(2)
  Pancake_Menu get menu => $_getN(1);
  @$pb.TagNumber(2)
  set menu(Pancake_Menu v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMenu() => $_has(1);
  @$pb.TagNumber(2)
  void clearMenu() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get technicalScore => $_getN(2);
  @$pb.TagNumber(3)
  set technicalScore($core.double v) {
    $_setFloat(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasTechnicalScore() => $_has(2);
  @$pb.TagNumber(3)
  void clearTechnicalScore() => clearField(3);

  @$pb.TagNumber(15)
  $1.Timestamp get createTime => $_getN(3);
  @$pb.TagNumber(15)
  set createTime($1.Timestamp v) {
    setField(15, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasCreateTime() => $_has(3);
  @$pb.TagNumber(15)
  void clearCreateTime() => clearField(15);
  @$pb.TagNumber(15)
  $1.Timestamp ensureCreateTime() => $_ensure(3);
}

class Report_BakeCount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Report.BakeCount',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pancake.maker'),
      createEmptyInstance: create)
    ..e<Pancake_Menu>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'menu',
        $pb.PbFieldType.OE,
        defaultOrMaker: Pancake_Menu.UNKNOWN,
        valueOf: Pancake_Menu.valueOf,
        enumValues: Pancake_Menu.values)
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'count',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  Report_BakeCount._() : super();
  factory Report_BakeCount({
    Pancake_Menu? menu,
    $core.int? count,
  }) {
    final _result = create();
    if (menu != null) {
      _result.menu = menu;
    }
    if (count != null) {
      _result.count = count;
    }
    return _result;
  }
  factory Report_BakeCount.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Report_BakeCount.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Report_BakeCount clone() => Report_BakeCount()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Report_BakeCount copyWith(void Function(Report_BakeCount) updates) =>
      super.copyWith((message) => updates(message as Report_BakeCount))
          as Report_BakeCount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Report_BakeCount create() => Report_BakeCount._();
  Report_BakeCount createEmptyInstance() => create();
  static $pb.PbList<Report_BakeCount> createRepeated() =>
      $pb.PbList<Report_BakeCount>();
  @$core.pragma('dart2js:noInline')
  static Report_BakeCount getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Report_BakeCount>(create);
  static Report_BakeCount? _defaultInstance;

  @$pb.TagNumber(1)
  Pancake_Menu get menu => $_getN(0);
  @$pb.TagNumber(1)
  set menu(Pancake_Menu v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMenu() => $_has(0);
  @$pb.TagNumber(1)
  void clearMenu() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get count => $_getIZ(1);
  @$pb.TagNumber(2)
  set count($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class Report extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Report',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pancake.maker'),
      createEmptyInstance: create)
    ..pc<Report_BakeCount>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'bakeCounts',
        $pb.PbFieldType.PM,
        subBuilder: Report_BakeCount.create)
    ..hasRequiredFields = false;

  Report._() : super();
  factory Report({
    $core.Iterable<Report_BakeCount>? bakeCounts,
  }) {
    final _result = create();
    if (bakeCounts != null) {
      _result.bakeCounts.addAll(bakeCounts);
    }
    return _result;
  }
  factory Report.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Report.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Report clone() => Report()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Report copyWith(void Function(Report) updates) =>
      super.copyWith((message) => updates(message as Report))
          as Report; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Report create() => Report._();
  Report createEmptyInstance() => create();
  static $pb.PbList<Report> createRepeated() => $pb.PbList<Report>();
  @$core.pragma('dart2js:noInline')
  static Report getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Report>(create);
  static Report? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Report_BakeCount> get bakeCounts => $_getList(0);
}

class BakeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BakeRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pancake.maker'),
      createEmptyInstance: create)
    ..e<Pancake_Menu>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'menu',
        $pb.PbFieldType.OE,
        defaultOrMaker: Pancake_Menu.UNKNOWN,
        valueOf: Pancake_Menu.valueOf,
        enumValues: Pancake_Menu.values)
    ..hasRequiredFields = false;

  BakeRequest._() : super();
  factory BakeRequest({
    Pancake_Menu? menu,
  }) {
    final _result = create();
    if (menu != null) {
      _result.menu = menu;
    }
    return _result;
  }
  factory BakeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BakeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BakeRequest clone() => BakeRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BakeRequest copyWith(void Function(BakeRequest) updates) =>
      super.copyWith((message) => updates(message as BakeRequest))
          as BakeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BakeRequest create() => BakeRequest._();
  BakeRequest createEmptyInstance() => create();
  static $pb.PbList<BakeRequest> createRepeated() => $pb.PbList<BakeRequest>();
  @$core.pragma('dart2js:noInline')
  static BakeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BakeRequest>(create);
  static BakeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Pancake_Menu get menu => $_getN(0);
  @$pb.TagNumber(1)
  set menu(Pancake_Menu v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMenu() => $_has(0);
  @$pb.TagNumber(1)
  void clearMenu() => clearField(1);
}

class BakeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'BakeResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pancake.maker'),
      createEmptyInstance: create)
    ..aOM<Pancake>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'pancake',
        subBuilder: Pancake.create)
    ..hasRequiredFields = false;

  BakeResponse._() : super();
  factory BakeResponse({
    Pancake? pancake,
  }) {
    final _result = create();
    if (pancake != null) {
      _result.pancake = pancake;
    }
    return _result;
  }
  factory BakeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BakeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BakeResponse clone() => BakeResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BakeResponse copyWith(void Function(BakeResponse) updates) =>
      super.copyWith((message) => updates(message as BakeResponse))
          as BakeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BakeResponse create() => BakeResponse._();
  BakeResponse createEmptyInstance() => create();
  static $pb.PbList<BakeResponse> createRepeated() =>
      $pb.PbList<BakeResponse>();
  @$core.pragma('dart2js:noInline')
  static BakeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BakeResponse>(create);
  static BakeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Pancake get pancake => $_getN(0);
  @$pb.TagNumber(1)
  set pancake(Pancake v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPancake() => $_has(0);
  @$pb.TagNumber(1)
  void clearPancake() => clearField(1);
  @$pb.TagNumber(1)
  Pancake ensurePancake() => $_ensure(0);
}

class ReportRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ReportRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pancake.maker'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  ReportRequest._() : super();
  factory ReportRequest() => create();
  factory ReportRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReportRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ReportRequest clone() => ReportRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ReportRequest copyWith(void Function(ReportRequest) updates) =>
      super.copyWith((message) => updates(message as ReportRequest))
          as ReportRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReportRequest create() => ReportRequest._();
  ReportRequest createEmptyInstance() => create();
  static $pb.PbList<ReportRequest> createRepeated() =>
      $pb.PbList<ReportRequest>();
  @$core.pragma('dart2js:noInline')
  static ReportRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReportRequest>(create);
  static ReportRequest? _defaultInstance;
}

class ReportResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ReportResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pancake.maker'),
      createEmptyInstance: create)
    ..aOM<Report>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'report',
        subBuilder: Report.create)
    ..hasRequiredFields = false;

  ReportResponse._() : super();
  factory ReportResponse({
    Report? report,
  }) {
    final _result = create();
    if (report != null) {
      _result.report = report;
    }
    return _result;
  }
  factory ReportResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ReportResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ReportResponse clone() => ReportResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ReportResponse copyWith(void Function(ReportResponse) updates) =>
      super.copyWith((message) => updates(message as ReportResponse))
          as ReportResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReportResponse create() => ReportResponse._();
  ReportResponse createEmptyInstance() => create();
  static $pb.PbList<ReportResponse> createRepeated() =>
      $pb.PbList<ReportResponse>();
  @$core.pragma('dart2js:noInline')
  static ReportResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReportResponse>(create);
  static ReportResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Report get report => $_getN(0);
  @$pb.TagNumber(1)
  set report(Report v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasReport() => $_has(0);
  @$pb.TagNumber(1)
  void clearReport() => clearField(1);
  @$pb.TagNumber(1)
  Report ensureReport() => $_ensure(0);
}

class NotificationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NotificationRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pancake.maker'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  NotificationRequest._() : super();
  factory NotificationRequest() => create();
  factory NotificationRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotificationRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NotificationRequest clone() => NotificationRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NotificationRequest copyWith(void Function(NotificationRequest) updates) =>
      super.copyWith((message) => updates(message as NotificationRequest))
          as NotificationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotificationRequest create() => NotificationRequest._();
  NotificationRequest createEmptyInstance() => create();
  static $pb.PbList<NotificationRequest> createRepeated() =>
      $pb.PbList<NotificationRequest>();
  @$core.pragma('dart2js:noInline')
  static NotificationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotificationRequest>(create);
  static NotificationRequest? _defaultInstance;
}

class NotificationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'NotificationResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pancake.maker'),
      createEmptyInstance: create)
    ..aOM<Report>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'report',
        subBuilder: Report.create)
    ..hasRequiredFields = false;

  NotificationResponse._() : super();
  factory NotificationResponse({
    Report? report,
  }) {
    final _result = create();
    if (report != null) {
      _result.report = report;
    }
    return _result;
  }
  factory NotificationResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NotificationResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NotificationResponse clone() =>
      NotificationResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NotificationResponse copyWith(void Function(NotificationResponse) updates) =>
      super.copyWith((message) => updates(message as NotificationResponse))
          as NotificationResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NotificationResponse create() => NotificationResponse._();
  NotificationResponse createEmptyInstance() => create();
  static $pb.PbList<NotificationResponse> createRepeated() =>
      $pb.PbList<NotificationResponse>();
  @$core.pragma('dart2js:noInline')
  static NotificationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NotificationResponse>(create);
  static NotificationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Report get report => $_getN(0);
  @$pb.TagNumber(1)
  set report(Report v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasReport() => $_has(0);
  @$pb.TagNumber(1)
  void clearReport() => clearField(1);
  @$pb.TagNumber(1)
  Report ensureReport() => $_ensure(0);
}
