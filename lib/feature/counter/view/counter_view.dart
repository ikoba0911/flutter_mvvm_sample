import 'package:flutter/material.dart';
import 'package:flutter_mvvm_sample/feature/counter/view_model/counter_view_model_provider.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterView extends ConsumerWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModle = ref.watch(counterViewModelProvider);
    final notifier = ref.watch(counterViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(viewModle.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${viewModle.count}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: notifier.incrementCount,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
