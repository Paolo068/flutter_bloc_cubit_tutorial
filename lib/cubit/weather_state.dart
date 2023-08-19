import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_cubit_tutorial/data/model/weather.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();
}

class WeatherInitial extends WeatherState {
  const WeatherInitial();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class WeatherLoading extends WeatherState {
  const WeatherLoading();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class WeatherLoaded extends WeatherState {
  final Weather weather;
  const WeatherLoaded(this.weather);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class WeatherError extends WeatherState {
  final String message;
  const WeatherError(this.message);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
