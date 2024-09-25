part of 'auth_bloc.dart';

enum AuthStatus { initial, success, failure, inProgress }

@Freezed(copyWith: true, equal: true)
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(LoginModelClass()) LoginModelClass userLoginData,
    @Default("") String phone,
    @Default("") String password,
    @Default("") String username,
    @Default(true) bool isPasswordObscure,
    @Default(AuthStatus.initial) AuthStatus status,
  }) = _AuthState;
}
