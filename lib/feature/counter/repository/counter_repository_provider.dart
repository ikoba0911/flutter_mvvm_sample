import 'package:flutter_mvvm_sample/feature/counter/data_store/counter_data_store_provider.dart';
import 'package:flutter_mvvm_sample/feature/counter/repository/counter_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterRepositoryProvider = Provider<CounterRepository>((ref) {
  final dataStore = ref.read(counterDataStoreProvider);
  return CounterRepository(dataStore);
});
