import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_repository.g.dart';

@riverpod
class CounterRepository extends _$CounterRepository {
  @override
  CounterRepository build() {
    // 必要に応じて初期化処理を行う
    return CounterRepository(); // もしくは this
  }

  int increment(int count) {
    // データソースへのアクセス
    return count + 1;
  }

  int decrement(int count) {
    return count - 1;
  }
}
