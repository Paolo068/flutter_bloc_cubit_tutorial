import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubit_tutorial/cubit/weather_cubit.dart';
import 'package:flutter_bloc_cubit_tutorial/data/weather_repository.dart';
import 'package:flutter_bloc_cubit_tutorial/pages/weather_search_page.dart';

// import 'pages/weather_search_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: BlocProvider(
        create: (context) => WeatherCubit(FakeWeatherRepository()),
        child: const WeatherSearchPage(),
      ),
    ); 
  }
}
