part of 'counter_bloc.dart';

/// Base class for all counter states.
/// States represent the UI data.
abstract class CounterState {
  final int count;

  /// Constructor to initialize the counter value.
  const CounterState(this.count);
}

/// Initial state when the app starts.
/// Counter value is 0.
class CounterInit extends CounterState {
  const CounterInit() : super(0);
}

/// State used when the counter value changes.
/// It carries the updated count value.
class CounterUpdate extends CounterState {
  const CounterUpdate(super.count);
}
