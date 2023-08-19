import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubit_tutorial/cubit/weather_state.dart';
import 'package:flutter_bloc_cubit_tutorial/data/weather_repository.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepository _weatherRepository;
  WeatherCubit(this._weatherRepository) : super(const WeatherInitial());

  Future<void> getWeather(String cityName) async {
    try {
      emit(const WeatherLoading());
      final weather = await _weatherRepository.fetchWeather(cityName);
      emit(WeatherLoaded(weather));
    } on NetworkException {
      emit(
        const WeatherError("Could not fetch Weather. Is the device online?"),
      );
    }
  }
}
