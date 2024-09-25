import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_model_class.g.dart';

@JsonSerializable()
class LoginModelClass extends Equatable {
  @JsonKey(name: 'user_id')
  final String? userId;
  @JsonKey(name: 'shift_start')
  final String? shiftStart;
  @JsonKey(name: 'shift_end')
  final String? shiftEnd;
  @JsonKey(name: 'full_name')
  final String? fullName;
  final String? refresh;
  final String? access;

  const LoginModelClass({
    this.userId,
    this.shiftStart,
    this.shiftEnd,
    this.fullName,
    this.refresh,
    this.access,
  });

  factory LoginModelClass.fromJson(Map<String, dynamic> json) {
    return _$LoginModelClassFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginModelClassToJson(this);

  LoginModelClass copyWith({
    String? userId,
    String? shiftStart,
    String? shiftEnd,
    String? fullName,
    String? refresh,
    String? access,
  }) {
    return LoginModelClass(
      userId: userId ?? this.userId,
      shiftStart: shiftStart ?? this.shiftStart,
      shiftEnd: shiftEnd ?? this.shiftEnd,
      fullName: fullName ?? this.fullName,
      refresh: refresh ?? this.refresh,
      access: access ?? this.access,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      userId,
      shiftStart,
      shiftEnd,
      fullName,
      refresh,
      access,
    ];
  }
}
