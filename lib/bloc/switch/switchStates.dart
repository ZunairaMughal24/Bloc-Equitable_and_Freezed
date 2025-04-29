import 'package:equatable/equatable.dart';

class Switchstates extends Equatable {
  bool isSwitch;
  final double slider;
  Switchstates({this.isSwitch = false, this.slider = 1.0});
  Switchstates copyWith({bool? isSwitch, double? slider}) {
    return Switchstates(
      isSwitch: isSwitch ?? this.isSwitch,
      slider: slider ?? this.slider,
    );
  }

  @override
  List<Object> get props => [isSwitch, slider];
}
