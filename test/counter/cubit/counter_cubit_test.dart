import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc_app/counter/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterCubit', () {
    test('initial state is 0', () {
      expect(CounterCubit().state, 0);
    });

    group('increment', () {
      blocTest<CounterCubit, int>('emits [1] when state is 0',
          build: () => CounterCubit(),
          act: (cubit) => cubit.increment(),
          expect: const <int>[1]);
    });
  });
}
