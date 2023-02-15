part of 'counter_cubit.dart';

class CounterState extends Equatable{
  int countValue;
  bool? wasIncremented;

  CounterState({
    required this.countValue,
    this.wasIncremented,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [countValue, wasIncremented];
}
