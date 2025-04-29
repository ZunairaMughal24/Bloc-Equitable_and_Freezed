import "package:equatable/equatable.dart";

abstract class Counterevents extends Equatable {
  const Counterevents();
  @override
  List<Object> get props => [];
}

class IncreamentCounter extends Counterevents {}

class DecreamentCounter extends Counterevents {}
