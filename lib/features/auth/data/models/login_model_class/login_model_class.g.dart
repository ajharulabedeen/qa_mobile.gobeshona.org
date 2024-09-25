// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModelClass _$LoginModelClassFromJson(Map<String, dynamic> json) =>
    LoginModelClass(
      userId: json['user_id'] as String?,
      shiftStart: json['shift_start'] as String?,
      shiftEnd: json['shift_end'] as String?,
      fullName: json['full_name'] as String?,
      refresh: json['refresh'] as String?,
      access: json['access'] as String?,
    );

Map<String, dynamic> _$LoginModelClassToJson(LoginModelClass instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'shift_start': instance.shiftStart,
      'shift_end': instance.shiftEnd,
      'full_name': instance.fullName,
      'refresh': instance.refresh,
      'access': instance.access,
    };
