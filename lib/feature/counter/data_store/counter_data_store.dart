import 'package:shared_preferences/shared_preferences.dart';

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
