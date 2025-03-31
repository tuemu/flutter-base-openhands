import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodels/counter_viewmodel.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(counterViewModelProvider);
    final viewModel = ref.watch(counterViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(child: Text('Count: ${state.count}')),
      floatingActionButton: FloatingActionButton(
        onPressed: viewModel.incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}
