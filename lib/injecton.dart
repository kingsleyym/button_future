import 'package:button_future/application/auth/SignUpFormBloc/sign_up_form_bloc.dart';
import 'package:button_future/domain/repository/todo_repository.dart';
import 'package:button_future/infastructure/repositories/auth_repository_imp.dart';
import 'package:button_future/infastructure/repositories/todo_repository_impl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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

  //! extern

  final firebaseAuth = FirebaseAuth.instance;
  sl.registerLazySingleton(() => firebaseAuth);

  //? ################# rpose  #################

  sl.registerLazySingleton<TodoRepository>(
      () => TodoRepositoryImpl(firestore: sl()));

  //! extern

  final firestore = FirebaseFirestore.instance;
  sl.registerLazySingleton(() => firestore);
}
