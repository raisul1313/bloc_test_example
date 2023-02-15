import 'package:bloc_test/bloc_test.dart';
import 'package:bloc_test_example/counter/counter_cubit.dart';
import 'package:test/test.dart';

void main() {
  group('CounterCubit', () {
    CounterCubit counterCubit = CounterCubit();

    setUp(() {
      counterCubit;
    });
    tearDown(() {
      counterCubit.close();
    });

    test(
        'The initial state for the CounterCubit is CounterState(counterValue:0)',
        () {
      expect(
        counterCubit.state,
        CounterState(countValue: 0),
      );
    });

    blocTest(
      'the CounterCubit should emit a CounterState(counterValue:1, wasIncremented:true) when the increment function is called',
      build: () => CounterCubit(),
      act: (cubit) => cubit.increment(),
      expect: () => [CounterState(countValue: 1, wasIncremented: true)],
    );

    blocTest(
      'the CounterCubit should emit a CounterState(counterValue:-1, wasIncremented:false) when the decrement function is called',
      build: () => CounterCubit(),
      act: (cubit) => cubit.decrement(),
      expect: () => [CounterState(countValue: -1, wasIncremented: false)],
    );
  });
}
