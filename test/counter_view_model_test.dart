import 'package:flutter_mvvm_sample/feature/counter/view_model/counter_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('increment', () {
    int result = CounteViewModelExt.increment(1);
    expect(result, 2); //test OK
  });
}
