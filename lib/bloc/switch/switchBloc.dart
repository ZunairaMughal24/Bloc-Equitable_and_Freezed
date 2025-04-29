import 'package:equitable/bloc/switch/switchEvents.dart';
import 'package:equitable/bloc/switch/switchStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Switchbloc extends Bloc<Switchevents, Switchstates> {
  Switchbloc() : super(Switchstates()) {
    on<EnableOrDisableNotification>(_enableOrDisableNotifaction);
    on<SliderEvent>(_slider);
  }
  void _enableOrDisableNotifaction(
      EnableOrDisableNotification event, Emitter<Switchstates> emit) {
    emit(state.copyWith(isSwitch: !state.isSwitch));
  }

  void _slider(SliderEvent event, Emitter<Switchstates> emit) {
    emit(state.copyWith(slider: event.slider));
  }
}
