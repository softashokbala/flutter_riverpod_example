import 'package:riverpod/riverpod.dart';

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier(int value) : super(value);

  void increment() => state++;

  void decrement() => state--;
}

final counterProvider = StateNotifierProvider<CounterNotifier, int>((ref) {
  return CounterNotifier(0);
});
