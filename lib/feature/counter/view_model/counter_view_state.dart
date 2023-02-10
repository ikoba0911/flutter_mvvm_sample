import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_view_state.freezed.dart';

@freezed
class CounterViewState with _$CounterViewState {
  const factory CounterViewState({
    required String title,
    @Default(0) int count,
  }) = _CounterViewState;
}
