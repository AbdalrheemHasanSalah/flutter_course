import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

/// CounterCubit is responsible for managing the counter state
/// It extends Cubit and emits CounterState objects
class CounterCubit extends Cubit<CounterState> {
  /// Constructor
  /// Initializes the cubit with the initial state
  CounterCubit() : super(CounterInit());

  /// Increments the counter value by 1
  /// - Reads the current value from the state
  /// - Emits a new CounterUpdate state
  /// - Triggers UI rebuild for listeners (BlocBuilder / BlocSelector)
  void increment() {
    emit(CounterUpdate(state.count + 1));
  }

  /// Decrements the counter value by 1
  /// - Reads the current value from the state
  /// - Emits a new CounterUpdate state
  /// - Triggers UI rebuild for listeners (BlocBuilder / BlocSelector)
  void decrement() {
    emit(CounterUpdate(state.count - 1));
  }
}
