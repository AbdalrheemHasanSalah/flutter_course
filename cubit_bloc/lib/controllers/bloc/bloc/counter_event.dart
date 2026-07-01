part of 'counter_bloc.dart';

/// Base class for all counter events.
/// Events are the actions that can happen in the UI.
@immutable
abstract class CounterEvent {}

/// Event to increment the counter.
class IncrementEvent extends CounterEvent {}

/// Event to decrement the counter.
class DecrementEvent extends CounterEvent {}
