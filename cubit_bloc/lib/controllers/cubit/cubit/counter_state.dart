part of 'counter_cubit.dart';

/// Base class for all counter states.
/// It holds the shared data (count) that all states use.
abstract class CounterState {
  final int count;

  /// Constructor to initialize the count value.
  CounterState(this.count);
}

/// Initial state of the counter.
/// When the app starts, the counter value is 0.
class CounterInit extends CounterState {
  CounterInit() : super(0);
}

/// State used when the counter value changes (increment/decrement).
/// It carries the updated count value.
class CounterUpdate extends CounterState {
  CounterUpdate(super.count);
}
