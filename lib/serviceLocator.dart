// import 'package:get_it/get_it.dart';
// import 'package:pos_flutter/core/network/dio_client.dart';
// // import 'package:pos_flutter/domain/auth/repositories/auth.dart';
// // import 'package:pos_flutter/domain/auth/usecases/signup.dart';

// final sl = GetIt.instance;

// void setupServiceLocator() {
//   sl.registerSingleton<DioClient>(DioClient());
//   // sl.registerLazySingleton(() => SignupUsecase(sl<AuthRepository>()));
// }

import 'package:get_it/get_it.dart';
import 'package:pos_flutter/data/auth/repositories/auth.dart';
import 'package:pos_flutter/domain/auth/repositories/auth.dart';
import 'package:pos_flutter/domain/auth/usecases/login.dart';
import 'package:pos_flutter/domain/auth/usecases/signup.dart';
import 'package:pos_flutter/presentation/auth/loginbloc/login_bloc.dart';
import 'package:pos_flutter/presentation/auth/signupbloc/signup_bloc.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  // sl.registerSingleton(DioClient());
  // // services
  // sl.registerSingleton<AuthApiService>(AuthApiServiceImpl());

  // // repositories
  // sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  // // usecases
  // sl.registerSingleton<SignupUsecase>(SignupUsecase());
  // sl.registerSingleton<LoginUsecase>(LoginUsecase());

  // // Core services
  // sl.registerLazySingleton(() => Dio());

  // // API Services
  // sl.registerLazySingleton(() => AuthApiService(sl<Dio>()));

  // // Repository
  // sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(sl<AuthApiService>()));

  // // Use cases
  // sl.registerLazySingleton(() => LoginUsecase(sl<AuthRepository>()));
  // sl.registerLazySingleton(() => SignupUsecase(sl<AuthRepository>()));

  // =====================================================================================================
  // Bloc
  // signup
  sl.registerFactory(() => SignupBloc(signup: sl()));
  // login
  sl.registerFactory(() => LoginBloc(login: sl()));

  // Use cases
  // signup
  sl.registerLazySingleton(() => Signup(sl()));
  // login
  sl.registerLazySingleton(() => Login(sl()));

  // Repository
  // signup
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());
  // login
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());
}
