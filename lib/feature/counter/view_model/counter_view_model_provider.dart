import 'package:flutter_mvvm_sample/feature/counter/repository/counter_repository_provider.dart';
import 'package:flutter_mvvm_sample/feature/counter/view_model/counter_view_model.dart';
import 'package:flutter_mvvm_sample/feature/counter/view_model/counter_view_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterViewModelProvider =
    StateNotifierProvider.autoDispose<CounterViewModel, CounterViewState>(
        (ref) {
  final repo = ref.watch(counterRepositoryProvider);
  int initialCount = 0;
  Future(
    () async {
      initialCount = await repo.getCount();
    },
  );
  return CounterViewModel(
    repo,
    initialCount,
  );
});
