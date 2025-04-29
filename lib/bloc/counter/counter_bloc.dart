import 'package:bloc/bloc.dart';
import 'package:equitable/bloc/counter/counterEvents.dart';
import 'package:equitable/bloc/counter/couterStates.dart';

class CounterBloc extends Bloc<Counterevents, CounterStates> {
  CounterBloc() : super(const CounterStates()) {
    on<IncreamentCounter>(_increament);
    on<DecreamentCounter>(_decreament);
  }
  void _increament(IncreamentCounter event, Emitter<CounterStates> emit) {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void _decreament(DecreamentCounter event, Emitter<CounterStates> emit) {
    emit(state.copyWith(counter: state.counter - 1));
  }
}
