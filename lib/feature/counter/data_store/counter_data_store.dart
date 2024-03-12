import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'counter_data_store.g.dart';

@riverpod
CounterDataStore counterDataStore(CounterDataStoreRef ref) {
  return CounterDataStore();
}

class CounterDataStore {
  void saveCount(int count) async {
    final localDataBase = await SharedPreferences.getInstance();
    localDataBase.setInt('counter', count);
  }

  Future<int> getCount() async {
    final localDataBase = await SharedPreferences.getInstance();
    return localDataBase.getInt('counter') ?? 0;
  }
}
