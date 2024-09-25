part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginDataSubmit({
    required BuildContext context,
    required String username,
    required String password,
  }) = _LoginDataSubmit;
  const factory AuthEvent.isPasswordObscured() = _IsPasswordObscured;
  const factory AuthEvent.usernameAdd({required String username}) =
      _UsernameAdd;
  const factory AuthEvent.passwordAdd({required String password}) =
      _PasswordAdd;
  const factory AuthEvent.usersDataDataLoaded() = _UsersDataDataLoaded;
}
