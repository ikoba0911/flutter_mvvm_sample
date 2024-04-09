import 'package:flutter/material.dart';
import 'package:flutter_mvvm_sample/feature/counter/view_model/counter_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterView extends ConsumerStatefulWidget {
  const CounterView({super.key});

  @override
  ConsumerState<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends ConsumerState<CounterView> {
  @override
  void initState() {
    super.initState();
    ref.read(counterViewModelProvider.notifier).fetch();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(counterViewModelProvider);
    final notifier = ref.watch(counterViewModelProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: Text(state.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${state.count}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: notifier.incrementCount,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
