import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

/// CounterBloc is responsible for managing the counter state.
/// It extends Bloc and emits CounterState objects.
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  /// Constructor
  /// Initializes the bloc with the initial state (CounterInit).
  CounterBloc() : super(const CounterInit()) {
    /// Registering event handler for IncrementEvent
    /// When IncrementEvent is added, this callback will run.
    on<IncrementEvent>((event, emit) {
      // Emit a new state with updated count value
      emit(CounterUpdate(state.count + 1));
    });
  }
}
