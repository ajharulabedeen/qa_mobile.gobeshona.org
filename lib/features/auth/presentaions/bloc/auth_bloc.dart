import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';

import '../../../core/services/login_provider.dart';
import '../../data/models/login_model_class/login_model_class.dart';
import '../../data/repositories/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  AuthBloc({required this.authRepository}) : super(const AuthState()) {
    on<AuthEvent>((events, emit) async {
      await events.map(
        loginDataSubmit: (event) async => await _loginDataSubmit(event, emit),
        isPasswordObscured: (event) async => await _isPasswordObscured(emit),
        passwordAdd: (event) async => await _passwordAdd(event, emit),
        usernameAdd: (event) async => await _usernameAdd(event, emit),
        usersDataDataLoaded: (event) async =>
            await _usersDataDataLoaded(event, emit),
      );
    });
  }

  Future<void> _loginDataSubmit(
      _LoginDataSubmit event, Emitter<AuthState> emit) async {
    emit(
      state.copyWith(
        status: AuthStatus.inProgress,
      ),
    );
    //const storage = FlutterSecureStorage();
    try {
      final userLoginResponse = await authRepository.userLogin(
        username: event.username,
        password: event.password,
      );
      userLoginResponse.access!.isNotEmpty &&
              userLoginResponse.refresh!.isNotEmpty
          ? event.context.go("/map-page")
          : null;
      emit(state.copyWith(
        userLoginData: userLoginResponse,
        status: AuthStatus.success,
      ));
      const storage = FlutterSecureStorage();
      String? token = userLoginResponse.access;
      if (kDebugMode) {
        print("infoToken 2: $token");
      }
      await storage.write(key: "token", value: token);
      final info = event.context.read<LoginInfo>();
      info.login("token");
      if (kDebugMode) {
        print("infoToken from Login Info: $info");
        log("userLoginResponse: $userLoginResponse");
      }
    } on DioException catch (e) {
      Logger().d(e.message);
      if (e.response?.statusCode != 200) {
        dynamic responseData = e.response?.data;
        String errorMessage = '';

        if (responseData is String) {
          errorMessage = responseData;
        } else if (responseData is Map<String, dynamic> &&
            responseData.containsKey("message")) {
          if (responseData["message"] is String) {
            errorMessage = responseData["message"];
          } else if (responseData["message"] is Map<String, dynamic>) {
            Map<String, dynamic> errorMap = responseData["message"];
            errorMessage = errorMap.values.join('\n');
          }
        }

        errorMessage = errorMessage.isNotEmpty
            ? errorMessage
            : 'An unexpected error occurred';

        await Fluttertoast.showToast(
          webPosition: "center",
          msg: errorMessage,
        );
        /*  await showDialog(
          context: event.context,
          builder: (BuildContext context) {
            return const CustomAlertDialog();
          },
        );*/
      }
      emit(state.copyWith(
        status: AuthStatus.failure,
      ));
    }
  }

  _isPasswordObscured(Emitter<AuthState> emit) {
    emit(
      state.copyWith(isPasswordObscure: !state.isPasswordObscure),
    );
  }

  _passwordAdd(_PasswordAdd event, Emitter<AuthState> emit) async {
    try {
      emit(
          state.copyWith(password: event.password, status: AuthStatus.success));
    } catch (e) {
      emit(state.copyWith(status: AuthStatus.failure));
    }
  }

  _usernameAdd(_UsernameAdd event, Emitter<AuthState> emit) async {
    try {
      emit(
          state.copyWith(username: event.username, status: AuthStatus.success));
    } catch (e) {
      emit(state.copyWith(status: AuthStatus.failure));
    }
  }

  _usersDataDataLoaded(
      _UsersDataDataLoaded event, Emitter<AuthState> emit) async {
    /*   emit(
      state.copyWith(
        status: MapStatus.initial,
      ),
    );*/
    try {
      final usersDataLoadedResponse = await authRepository.userLogin(
          username: state.username, password: state.password);

      emit(state.copyWith(
        userLoginData: usersDataLoadedResponse,
        status: AuthStatus.success,
      ));

      if (kDebugMode) {
        log("usersDataLoadedResponse: $usersDataLoadedResponse");
      }
    } on DioException catch (e) {
      if (kDebugMode) {
        Logger().e(e);
      }
      if (e.response?.statusCode != 200) {
        dynamic responseData = e.response?.data;
        String errorMessage = '';

        if (responseData is String) {
          errorMessage = responseData;
        } else if (responseData is Map<String, dynamic> &&
            responseData.containsKey("message")) {
          if (responseData["message"] is String) {
            errorMessage = responseData["message"];
          } else if (responseData["message"] is Map<String, dynamic>) {
            Map<String, dynamic> errorMap = responseData["message"];
            errorMessage = errorMap.values.join('\n');
          }
        }

        errorMessage = errorMessage.isNotEmpty
            ? errorMessage
            : 'An unexpected error occurred';
        await Fluttertoast.showToast(
          webPosition: "center",
          msg: errorMessage,
        );
      }
      emit(state.copyWith(
        status: AuthStatus.failure,
      ));
    }
  }
}
