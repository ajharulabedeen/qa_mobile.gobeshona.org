// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String username, String password)
        loginDataSubmit,
    required TResult Function() isPasswordObscured,
    required TResult Function(String username) usernameAdd,
    required TResult Function(String password) passwordAdd,
    required TResult Function() usersDataDataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String username, String password)?
        loginDataSubmit,
    TResult? Function()? isPasswordObscured,
    TResult? Function(String username)? usernameAdd,
    TResult? Function(String password)? passwordAdd,
    TResult? Function()? usersDataDataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String username, String password)?
        loginDataSubmit,
    TResult Function()? isPasswordObscured,
    TResult Function(String username)? usernameAdd,
    TResult Function(String password)? passwordAdd,
    TResult Function()? usersDataDataLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginDataSubmit value) loginDataSubmit,
    required TResult Function(_IsPasswordObscured value) isPasswordObscured,
    required TResult Function(_UsernameAdd value) usernameAdd,
    required TResult Function(_PasswordAdd value) passwordAdd,
    required TResult Function(_UsersDataDataLoaded value) usersDataDataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginDataSubmit value)? loginDataSubmit,
    TResult? Function(_IsPasswordObscured value)? isPasswordObscured,
    TResult? Function(_UsernameAdd value)? usernameAdd,
    TResult? Function(_PasswordAdd value)? passwordAdd,
    TResult? Function(_UsersDataDataLoaded value)? usersDataDataLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginDataSubmit value)? loginDataSubmit,
    TResult Function(_IsPasswordObscured value)? isPasswordObscured,
    TResult Function(_UsernameAdd value)? usernameAdd,
    TResult Function(_PasswordAdd value)? passwordAdd,
    TResult Function(_UsersDataDataLoaded value)? usersDataDataLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginDataSubmitImplCopyWith<$Res> {
  factory _$$LoginDataSubmitImplCopyWith(_$LoginDataSubmitImpl value,
          $Res Function(_$LoginDataSubmitImpl) then) =
      __$$LoginDataSubmitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String username, String password});
}

/// @nodoc
class __$$LoginDataSubmitImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginDataSubmitImpl>
    implements _$$LoginDataSubmitImplCopyWith<$Res> {
  __$$LoginDataSubmitImplCopyWithImpl(
      _$LoginDataSubmitImpl _value, $Res Function(_$LoginDataSubmitImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$LoginDataSubmitImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginDataSubmitImpl
    with DiagnosticableTreeMixin
    implements _LoginDataSubmit {
  const _$LoginDataSubmitImpl(
      {required this.context, required this.username, required this.password});

  @override
  final BuildContext context;
  @override
  final String username;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.loginDataSubmit(context: $context, username: $username, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.loginDataSubmit'))
      ..add(DiagnosticsProperty('context', context))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginDataSubmitImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, username, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginDataSubmitImplCopyWith<_$LoginDataSubmitImpl> get copyWith =>
      __$$LoginDataSubmitImplCopyWithImpl<_$LoginDataSubmitImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String username, String password)
        loginDataSubmit,
    required TResult Function() isPasswordObscured,
    required TResult Function(String username) usernameAdd,
    required TResult Function(String password) passwordAdd,
    required TResult Function() usersDataDataLoaded,
  }) {
    return loginDataSubmit(context, username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String username, String password)?
        loginDataSubmit,
    TResult? Function()? isPasswordObscured,
    TResult? Function(String username)? usernameAdd,
    TResult? Function(String password)? passwordAdd,
    TResult? Function()? usersDataDataLoaded,
  }) {
    return loginDataSubmit?.call(context, username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String username, String password)?
        loginDataSubmit,
    TResult Function()? isPasswordObscured,
    TResult Function(String username)? usernameAdd,
    TResult Function(String password)? passwordAdd,
    TResult Function()? usersDataDataLoaded,
    required TResult orElse(),
  }) {
    if (loginDataSubmit != null) {
      return loginDataSubmit(context, username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginDataSubmit value) loginDataSubmit,
    required TResult Function(_IsPasswordObscured value) isPasswordObscured,
    required TResult Function(_UsernameAdd value) usernameAdd,
    required TResult Function(_PasswordAdd value) passwordAdd,
    required TResult Function(_UsersDataDataLoaded value) usersDataDataLoaded,
  }) {
    return loginDataSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginDataSubmit value)? loginDataSubmit,
    TResult? Function(_IsPasswordObscured value)? isPasswordObscured,
    TResult? Function(_UsernameAdd value)? usernameAdd,
    TResult? Function(_PasswordAdd value)? passwordAdd,
    TResult? Function(_UsersDataDataLoaded value)? usersDataDataLoaded,
  }) {
    return loginDataSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginDataSubmit value)? loginDataSubmit,
    TResult Function(_IsPasswordObscured value)? isPasswordObscured,
    TResult Function(_UsernameAdd value)? usernameAdd,
    TResult Function(_PasswordAdd value)? passwordAdd,
    TResult Function(_UsersDataDataLoaded value)? usersDataDataLoaded,
    required TResult orElse(),
  }) {
    if (loginDataSubmit != null) {
      return loginDataSubmit(this);
    }
    return orElse();
  }
}

abstract class _LoginDataSubmit implements AuthEvent {
  const factory _LoginDataSubmit(
      {required final BuildContext context,
      required final String username,
      required final String password}) = _$LoginDataSubmitImpl;

  BuildContext get context;
  String get username;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginDataSubmitImplCopyWith<_$LoginDataSubmitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsPasswordObscuredImplCopyWith<$Res> {
  factory _$$IsPasswordObscuredImplCopyWith(_$IsPasswordObscuredImpl value,
          $Res Function(_$IsPasswordObscuredImpl) then) =
      __$$IsPasswordObscuredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsPasswordObscuredImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$IsPasswordObscuredImpl>
    implements _$$IsPasswordObscuredImplCopyWith<$Res> {
  __$$IsPasswordObscuredImplCopyWithImpl(_$IsPasswordObscuredImpl _value,
      $Res Function(_$IsPasswordObscuredImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IsPasswordObscuredImpl
    with DiagnosticableTreeMixin
    implements _IsPasswordObscured {
  const _$IsPasswordObscuredImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.isPasswordObscured()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.isPasswordObscured'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsPasswordObscuredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String username, String password)
        loginDataSubmit,
    required TResult Function() isPasswordObscured,
    required TResult Function(String username) usernameAdd,
    required TResult Function(String password) passwordAdd,
    required TResult Function() usersDataDataLoaded,
  }) {
    return isPasswordObscured();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String username, String password)?
        loginDataSubmit,
    TResult? Function()? isPasswordObscured,
    TResult? Function(String username)? usernameAdd,
    TResult? Function(String password)? passwordAdd,
    TResult? Function()? usersDataDataLoaded,
  }) {
    return isPasswordObscured?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String username, String password)?
        loginDataSubmit,
    TResult Function()? isPasswordObscured,
    TResult Function(String username)? usernameAdd,
    TResult Function(String password)? passwordAdd,
    TResult Function()? usersDataDataLoaded,
    required TResult orElse(),
  }) {
    if (isPasswordObscured != null) {
      return isPasswordObscured();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginDataSubmit value) loginDataSubmit,
    required TResult Function(_IsPasswordObscured value) isPasswordObscured,
    required TResult Function(_UsernameAdd value) usernameAdd,
    required TResult Function(_PasswordAdd value) passwordAdd,
    required TResult Function(_UsersDataDataLoaded value) usersDataDataLoaded,
  }) {
    return isPasswordObscured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginDataSubmit value)? loginDataSubmit,
    TResult? Function(_IsPasswordObscured value)? isPasswordObscured,
    TResult? Function(_UsernameAdd value)? usernameAdd,
    TResult? Function(_PasswordAdd value)? passwordAdd,
    TResult? Function(_UsersDataDataLoaded value)? usersDataDataLoaded,
  }) {
    return isPasswordObscured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginDataSubmit value)? loginDataSubmit,
    TResult Function(_IsPasswordObscured value)? isPasswordObscured,
    TResult Function(_UsernameAdd value)? usernameAdd,
    TResult Function(_PasswordAdd value)? passwordAdd,
    TResult Function(_UsersDataDataLoaded value)? usersDataDataLoaded,
    required TResult orElse(),
  }) {
    if (isPasswordObscured != null) {
      return isPasswordObscured(this);
    }
    return orElse();
  }
}

abstract class _IsPasswordObscured implements AuthEvent {
  const factory _IsPasswordObscured() = _$IsPasswordObscuredImpl;
}

/// @nodoc
abstract class _$$UsernameAddImplCopyWith<$Res> {
  factory _$$UsernameAddImplCopyWith(
          _$UsernameAddImpl value, $Res Function(_$UsernameAddImpl) then) =
      __$$UsernameAddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$UsernameAddImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UsernameAddImpl>
    implements _$$UsernameAddImplCopyWith<$Res> {
  __$$UsernameAddImplCopyWithImpl(
      _$UsernameAddImpl _value, $Res Function(_$UsernameAddImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$UsernameAddImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UsernameAddImpl with DiagnosticableTreeMixin implements _UsernameAdd {
  const _$UsernameAddImpl({required this.username});

  @override
  final String username;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.usernameAdd(username: $username)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.usernameAdd'))
      ..add(DiagnosticsProperty('username', username));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsernameAddImpl &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsernameAddImplCopyWith<_$UsernameAddImpl> get copyWith =>
      __$$UsernameAddImplCopyWithImpl<_$UsernameAddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String username, String password)
        loginDataSubmit,
    required TResult Function() isPasswordObscured,
    required TResult Function(String username) usernameAdd,
    required TResult Function(String password) passwordAdd,
    required TResult Function() usersDataDataLoaded,
  }) {
    return usernameAdd(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String username, String password)?
        loginDataSubmit,
    TResult? Function()? isPasswordObscured,
    TResult? Function(String username)? usernameAdd,
    TResult? Function(String password)? passwordAdd,
    TResult? Function()? usersDataDataLoaded,
  }) {
    return usernameAdd?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String username, String password)?
        loginDataSubmit,
    TResult Function()? isPasswordObscured,
    TResult Function(String username)? usernameAdd,
    TResult Function(String password)? passwordAdd,
    TResult Function()? usersDataDataLoaded,
    required TResult orElse(),
  }) {
    if (usernameAdd != null) {
      return usernameAdd(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginDataSubmit value) loginDataSubmit,
    required TResult Function(_IsPasswordObscured value) isPasswordObscured,
    required TResult Function(_UsernameAdd value) usernameAdd,
    required TResult Function(_PasswordAdd value) passwordAdd,
    required TResult Function(_UsersDataDataLoaded value) usersDataDataLoaded,
  }) {
    return usernameAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginDataSubmit value)? loginDataSubmit,
    TResult? Function(_IsPasswordObscured value)? isPasswordObscured,
    TResult? Function(_UsernameAdd value)? usernameAdd,
    TResult? Function(_PasswordAdd value)? passwordAdd,
    TResult? Function(_UsersDataDataLoaded value)? usersDataDataLoaded,
  }) {
    return usernameAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginDataSubmit value)? loginDataSubmit,
    TResult Function(_IsPasswordObscured value)? isPasswordObscured,
    TResult Function(_UsernameAdd value)? usernameAdd,
    TResult Function(_PasswordAdd value)? passwordAdd,
    TResult Function(_UsersDataDataLoaded value)? usersDataDataLoaded,
    required TResult orElse(),
  }) {
    if (usernameAdd != null) {
      return usernameAdd(this);
    }
    return orElse();
  }
}

abstract class _UsernameAdd implements AuthEvent {
  const factory _UsernameAdd({required final String username}) =
      _$UsernameAddImpl;

  String get username;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsernameAddImplCopyWith<_$UsernameAddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordAddImplCopyWith<$Res> {
  factory _$$PasswordAddImplCopyWith(
          _$PasswordAddImpl value, $Res Function(_$PasswordAddImpl) then) =
      __$$PasswordAddImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordAddImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$PasswordAddImpl>
    implements _$$PasswordAddImplCopyWith<$Res> {
  __$$PasswordAddImplCopyWithImpl(
      _$PasswordAddImpl _value, $Res Function(_$PasswordAddImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordAddImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordAddImpl with DiagnosticableTreeMixin implements _PasswordAdd {
  const _$PasswordAddImpl({required this.password});

  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.passwordAdd(password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.passwordAdd'))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordAddImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordAddImplCopyWith<_$PasswordAddImpl> get copyWith =>
      __$$PasswordAddImplCopyWithImpl<_$PasswordAddImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String username, String password)
        loginDataSubmit,
    required TResult Function() isPasswordObscured,
    required TResult Function(String username) usernameAdd,
    required TResult Function(String password) passwordAdd,
    required TResult Function() usersDataDataLoaded,
  }) {
    return passwordAdd(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String username, String password)?
        loginDataSubmit,
    TResult? Function()? isPasswordObscured,
    TResult? Function(String username)? usernameAdd,
    TResult? Function(String password)? passwordAdd,
    TResult? Function()? usersDataDataLoaded,
  }) {
    return passwordAdd?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String username, String password)?
        loginDataSubmit,
    TResult Function()? isPasswordObscured,
    TResult Function(String username)? usernameAdd,
    TResult Function(String password)? passwordAdd,
    TResult Function()? usersDataDataLoaded,
    required TResult orElse(),
  }) {
    if (passwordAdd != null) {
      return passwordAdd(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginDataSubmit value) loginDataSubmit,
    required TResult Function(_IsPasswordObscured value) isPasswordObscured,
    required TResult Function(_UsernameAdd value) usernameAdd,
    required TResult Function(_PasswordAdd value) passwordAdd,
    required TResult Function(_UsersDataDataLoaded value) usersDataDataLoaded,
  }) {
    return passwordAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginDataSubmit value)? loginDataSubmit,
    TResult? Function(_IsPasswordObscured value)? isPasswordObscured,
    TResult? Function(_UsernameAdd value)? usernameAdd,
    TResult? Function(_PasswordAdd value)? passwordAdd,
    TResult? Function(_UsersDataDataLoaded value)? usersDataDataLoaded,
  }) {
    return passwordAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginDataSubmit value)? loginDataSubmit,
    TResult Function(_IsPasswordObscured value)? isPasswordObscured,
    TResult Function(_UsernameAdd value)? usernameAdd,
    TResult Function(_PasswordAdd value)? passwordAdd,
    TResult Function(_UsersDataDataLoaded value)? usersDataDataLoaded,
    required TResult orElse(),
  }) {
    if (passwordAdd != null) {
      return passwordAdd(this);
    }
    return orElse();
  }
}

abstract class _PasswordAdd implements AuthEvent {
  const factory _PasswordAdd({required final String password}) =
      _$PasswordAddImpl;

  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordAddImplCopyWith<_$PasswordAddImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsersDataDataLoadedImplCopyWith<$Res> {
  factory _$$UsersDataDataLoadedImplCopyWith(_$UsersDataDataLoadedImpl value,
          $Res Function(_$UsersDataDataLoadedImpl) then) =
      __$$UsersDataDataLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UsersDataDataLoadedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UsersDataDataLoadedImpl>
    implements _$$UsersDataDataLoadedImplCopyWith<$Res> {
  __$$UsersDataDataLoadedImplCopyWithImpl(_$UsersDataDataLoadedImpl _value,
      $Res Function(_$UsersDataDataLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UsersDataDataLoadedImpl
    with DiagnosticableTreeMixin
    implements _UsersDataDataLoaded {
  const _$UsersDataDataLoadedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.usersDataDataLoaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'AuthEvent.usersDataDataLoaded'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersDataDataLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, String username, String password)
        loginDataSubmit,
    required TResult Function() isPasswordObscured,
    required TResult Function(String username) usernameAdd,
    required TResult Function(String password) passwordAdd,
    required TResult Function() usersDataDataLoaded,
  }) {
    return usersDataDataLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, String username, String password)?
        loginDataSubmit,
    TResult? Function()? isPasswordObscured,
    TResult? Function(String username)? usernameAdd,
    TResult? Function(String password)? passwordAdd,
    TResult? Function()? usersDataDataLoaded,
  }) {
    return usersDataDataLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, String username, String password)?
        loginDataSubmit,
    TResult Function()? isPasswordObscured,
    TResult Function(String username)? usernameAdd,
    TResult Function(String password)? passwordAdd,
    TResult Function()? usersDataDataLoaded,
    required TResult orElse(),
  }) {
    if (usersDataDataLoaded != null) {
      return usersDataDataLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginDataSubmit value) loginDataSubmit,
    required TResult Function(_IsPasswordObscured value) isPasswordObscured,
    required TResult Function(_UsernameAdd value) usernameAdd,
    required TResult Function(_PasswordAdd value) passwordAdd,
    required TResult Function(_UsersDataDataLoaded value) usersDataDataLoaded,
  }) {
    return usersDataDataLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginDataSubmit value)? loginDataSubmit,
    TResult? Function(_IsPasswordObscured value)? isPasswordObscured,
    TResult? Function(_UsernameAdd value)? usernameAdd,
    TResult? Function(_PasswordAdd value)? passwordAdd,
    TResult? Function(_UsersDataDataLoaded value)? usersDataDataLoaded,
  }) {
    return usersDataDataLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginDataSubmit value)? loginDataSubmit,
    TResult Function(_IsPasswordObscured value)? isPasswordObscured,
    TResult Function(_UsernameAdd value)? usernameAdd,
    TResult Function(_PasswordAdd value)? passwordAdd,
    TResult Function(_UsersDataDataLoaded value)? usersDataDataLoaded,
    required TResult orElse(),
  }) {
    if (usersDataDataLoaded != null) {
      return usersDataDataLoaded(this);
    }
    return orElse();
  }
}

abstract class _UsersDataDataLoaded implements AuthEvent {
  const factory _UsersDataDataLoaded() = _$UsersDataDataLoadedImpl;
}

/// @nodoc
mixin _$AuthState {
  LoginModelClass get userLoginData => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  bool get isPasswordObscure => throw _privateConstructorUsedError;
  AuthStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {LoginModelClass userLoginData,
      String phone,
      String password,
      String username,
      bool isPasswordObscure,
      AuthStatus status});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLoginData = null,
    Object? phone = null,
    Object? password = null,
    Object? username = null,
    Object? isPasswordObscure = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      userLoginData: null == userLoginData
          ? _value.userLoginData
          : userLoginData // ignore: cast_nullable_to_non_nullable
              as LoginModelClass,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      isPasswordObscure: null == isPasswordObscure
          ? _value.isPasswordObscure
          : isPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoginModelClass userLoginData,
      String phone,
      String password,
      String username,
      bool isPasswordObscure,
      AuthStatus status});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLoginData = null,
    Object? phone = null,
    Object? password = null,
    Object? username = null,
    Object? isPasswordObscure = null,
    Object? status = null,
  }) {
    return _then(_$AuthStateImpl(
      userLoginData: null == userLoginData
          ? _value.userLoginData
          : userLoginData // ignore: cast_nullable_to_non_nullable
              as LoginModelClass,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      isPasswordObscure: null == isPasswordObscure
          ? _value.isPasswordObscure
          : isPasswordObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl with DiagnosticableTreeMixin implements _AuthState {
  const _$AuthStateImpl(
      {this.userLoginData = const LoginModelClass(),
      this.phone = "",
      this.password = "",
      this.username = "",
      this.isPasswordObscure = true,
      this.status = AuthStatus.initial});

  @override
  @JsonKey()
  final LoginModelClass userLoginData;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final bool isPasswordObscure;
  @override
  @JsonKey()
  final AuthStatus status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState(userLoginData: $userLoginData, phone: $phone, password: $password, username: $username, isPasswordObscure: $isPasswordObscure, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState'))
      ..add(DiagnosticsProperty('userLoginData', userLoginData))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('isPasswordObscure', isPasswordObscure))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.userLoginData, userLoginData) ||
                other.userLoginData == userLoginData) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.isPasswordObscure, isPasswordObscure) ||
                other.isPasswordObscure == isPasswordObscure) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userLoginData, phone, password,
      username, isPasswordObscure, status);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final LoginModelClass userLoginData,
      final String phone,
      final String password,
      final String username,
      final bool isPasswordObscure,
      final AuthStatus status}) = _$AuthStateImpl;

  @override
  LoginModelClass get userLoginData;
  @override
  String get phone;
  @override
  String get password;
  @override
  String get username;
  @override
  bool get isPasswordObscure;
  @override
  AuthStatus get status;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
