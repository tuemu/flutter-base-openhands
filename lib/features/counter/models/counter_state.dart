import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_state.freezed.dart';
part 'counter_state.g.dart';

@freezed
sealed class CounterState with _$CounterState {
  const factory CounterState({
    @Default(0) int count,
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _CounterState;

  factory CounterState.fromJson(Map<String, Object?> json) =>
      _$CounterStateFromJson(json);
}
