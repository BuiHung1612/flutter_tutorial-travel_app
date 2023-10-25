import 'package:equatable/equatable.dart';
import 'package:travel_app/models/data_model.dart';

abstract class CubitsState extends Equatable {}

class InitialState extends CubitsState {
  @override
  List<Object> get props => [];
}

class WelcomeState extends CubitsState {
  @override
  List<Object> get props => [];
}

class LoadingState extends CubitsState {
  @override
  List<Object> get props => [];
}

class LoadedState extends CubitsState {
  LoadedState(this.places);
  final List<DataModel> places;
  @override
  List<Object> get props => [places];
}

class DetailState extends CubitsState {
  DetailState(this.place);
  final DataModel place;
  @override
  List<Object> get props => [place];
}
