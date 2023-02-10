import 'package:flutter_mvvm_sample/feature/counter/repository/counter_repository.dart';
import 'package:flutter_mvvm_sample/feature/counter/usecase/counter_usecase.dart';
import 'package:flutter_mvvm_sample/feature/counter/view_model/counter_view_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterViewModel extends StateNotifier<CounterViewState> {
  final CounterRepository _repository;
  CounterViewModel(this._repository)
      : super(const CounterViewState(title: 'CounterView'));

  void fetch() async {
    final initCount = await _repository.getCount();
    state = state.copyWith(count: initCount);
  }

  void incrementCount() async {
    state = state.copyWith(count: CounterUseCase.increment(state.count));
    _repository.saveCount(state.count);
  }
}
