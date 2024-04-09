import 'package:flutter_mvvm_sample/feature/counter/repository/counter_repository.dart';
import 'package:flutter_mvvm_sample/feature/counter/view_model/counter_view_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_view_model.g.dart';

@riverpod
class CounterViewModel extends _$CounterViewModel {
  @override
  CounterViewState build() => const CounterViewState(title: 'CounterView');

  void fetch() async {
    final initCount = await ref.read(counterRepositoryProvider).getCount();
    state = state.copyWith(count: initCount);
  }

  void incrementCount() async {
    state = state.copyWith(count: CounteViewModelExt.increment(state.count));
    ref.read(counterRepositoryProvider).saveCount(state.count);
  }
}

extension CounteViewModelExt on CounterViewModel {
  static int increment(int number) {
    return number + 1;
  }
}
