import 'package:button_future/application/auth/SignUpFormBloc/sign_up_form_bloc.dart';
import 'package:button_future/infastructure/repositories/auth_repository_imp.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

import 'application/auth/auth/auth_bloc.dart';
import 'domain/repository/auth_repository.dart';

final sl = GetIt.I;

Future<void> init() async {
  //!state managment
  sl.registerFactory(() => SignUpFormBloc(authRepository: sl()));
  sl.registerFactory(() => AuthBloc(
        authRepository: sl(),
      ));

  //! rpose
  sl.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(firebaseAuth: sl()));

  //! rpose

  final firebaseAuth = FirebaseAuth.instance;
  sl.registerLazySingleton(() => firebaseAuth);
}
