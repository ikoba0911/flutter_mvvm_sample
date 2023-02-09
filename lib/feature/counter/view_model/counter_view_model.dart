import 'package:flutter_mvvm_sample/feature/counter/repository/counter_repository.dart';
import 'package:flutter_mvvm_sample/feature/counter/usecase/counter_usecase.dart';
import 'package:flutter_mvvm_sample/feature/counter/view_model/counter_view_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterViewModel extends StateNotifier<CounterViewState> {
  final CounterRepository repo;
  final int count;
  CounterViewModel(this.repo, this.count)
      : super(CounterViewState(title: 'CounterView', count: count));

  void incrementCount() async {
    state = state.copyWith(count: CounterUseCase.increment(state.count));
    repo.saveCount(state.count);
  }
}
