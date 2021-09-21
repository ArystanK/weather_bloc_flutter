import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:weather_repository/weather_repository.dart';
import 'package:path_provider/path_provider.dart';

import 'weather_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Bloc.observer = WeatherBlocObserver();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
  runApp(WeatherApp(weatherRepository: WeatherRepository()));
}
