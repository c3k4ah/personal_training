import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/networks/network.dart';
import '../core/networks/network_info.dart';
import '../core/source/remote/remote_source.dart';
import '../core/source/remote/remote_source_impl.dart';
import '../features/stripe/manager/stripe_bloc.dart';

part 'bloc_injections.dart';

part 'injection_usecase.dart';

part 'injection_repository.dart';

part 'injection_datasource.dart';

final getIt = GetIt.instance;

Future<void> initInjection() async {
  blocs();
  datasources();
  usecases();
  repositories();
  await service();
}

Future<void> service() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(sharedPreferences);

  await dotenv.load(fileName: '.env');
  Stripe.publishableKey = dotenv.env['STRIPE_PUBLISHABLE_KEY']!;
  await Stripe.instance.applySettings();

  final dio = Dio(
    BaseOptions(
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
    ),
  );

  getIt.registerSingleton(dio);

  getIt.registerLazySingleton<RemoteSource>(() => RemoteSourceImpl(dio));
}

void externalResources() {
  getIt.registerLazySingleton(() => InternetConnection());

  getIt.registerLazySingleton<ConnexionChecker>(
    () => ConnexionCheckerImp(
      connectivity: getIt<InternetConnection>(),
    ),
  );
}
