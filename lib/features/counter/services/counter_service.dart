import 'package:imin/features/counter/repositories/counter_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_service.g.dart';

@riverpod
class CounterService extends _$CounterService {
  late final CounterRepository _repository;

  @override
  Future<CounterService> build() async {
    _repository = ref.read(counterRepositoryProvider); // buildメソッド内で初期化
    return this;
  }

  Future<int> increment(int count) async {
    // データソースへのアクセス（例：API呼び出し）
    return _repository.increment(count);
  }

  Future<int> decrement(int count) async {
    // データソースへのアクセス（例：API呼び出し）
    return _repository.decrement(count);
  }
}
