import 'package:flutter_mvvm_sample/feature/counter/data_store/counter_data_store.dart';

class CounterRepository {
  final CounterDataStore _dataStore;

  CounterRepository(this._dataStore);

  Future<int> getCount() async {
    try {
      // Reproduction of asynchronous processing
      await Future.delayed(const Duration(seconds: 1));
      return _dataStore.getCount();
    } catch (e) {
      rethrow;
    }
  }

  void saveCount(int count) async {
    try {
      // Reproduction of asynchronous processing
      await Future.delayed(const Duration(seconds: 1));
      _dataStore.saveCount(count);
    } catch (e) {
      rethrow;
    }
  }
}
