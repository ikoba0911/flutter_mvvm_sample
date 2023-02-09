import 'package:flutter_mvvm_sample/feature/counter/data_store/counter_data_store.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterDataStoreProvider = Provider(
  (ref) => CounterDataStore(),
);
