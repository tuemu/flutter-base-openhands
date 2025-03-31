import 'package:imin/features/counter/models/counter_state.dart';
import 'package:imin/features/counter/services/counter_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_viewmodel.g.dart';

@riverpod
class CounterViewModel extends _$CounterViewModel {
  @override
  CounterState build() => const CounterState();

  Future<void> incrementCounter() async {
    final newCount = await ref
        .read(counterServiceProvider.notifier)
        .increment(state.count);
    state = state.copyWith(count: newCount);
  }
}
