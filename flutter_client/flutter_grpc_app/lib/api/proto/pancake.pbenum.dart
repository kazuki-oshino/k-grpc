///
//  Generated code. Do not modify.
//  source: proto/pancake.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Pancake_Menu extends $pb.ProtobufEnum {
  static const Pancake_Menu UNKNOWN = Pancake_Menu._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const Pancake_Menu CLASSIC = Pancake_Menu._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CLASSIC');
  static const Pancake_Menu BANANA_AND_WHIP = Pancake_Menu._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BANANA_AND_WHIP');
  static const Pancake_Menu BACON_AND_CHEESE = Pancake_Menu._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BACON_AND_CHEESE');
  static const Pancake_Menu MIX_BERRY = Pancake_Menu._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MIX_BERRY');
  static const Pancake_Menu BAKED_MARSHMALLOW = Pancake_Menu._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BAKED_MARSHMALLOW');
  static const Pancake_Menu SPICY_CURRY = Pancake_Menu._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SPICY_CURRY');

  static const $core.List<Pancake_Menu> values = <Pancake_Menu> [
    UNKNOWN,
    CLASSIC,
    BANANA_AND_WHIP,
    BACON_AND_CHEESE,
    MIX_BERRY,
    BAKED_MARSHMALLOW,
    SPICY_CURRY,
  ];

  static final $core.Map<$core.int, Pancake_Menu> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Pancake_Menu valueOf($core.int value) => _byValue[value];

  const Pancake_Menu._($core.int v, $core.String n) : super(v, n);
}

