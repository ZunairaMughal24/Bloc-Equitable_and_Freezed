import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class Switchevents {
  Switchevents();
  @override
  List<Object> get props => [];
}

class EnableOrDisableNotification extends Switchevents {}

class SliderEvent extends Switchevents {
  double slider;
  SliderEvent({required this.slider});

  @override
  List<Object> get props => [slider];
}
