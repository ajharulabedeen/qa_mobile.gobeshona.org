part of 'home_bloc.dart';

enum HomeStatus { initial, success, failure, inProgress }

@Freezed(copyWith: true, equal: true)
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
}
