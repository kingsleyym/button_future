import 'package:button_future/application/auth/SignUpFormBloc/sign_up_form_bloc.dart';
import 'package:button_future/domain/repository/todo_repository.dart';
import 'package:button_future/infastructure/repositories/auth_repository_imp.dart';
import 'package:button_future/infastructure/repositories/todo_repository_impl.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

import 'application/auth/auth/auth_bloc.dart';
import 'application/news/bloc/todoform_bloc.dart';
import 'application/news/observe/observe_bloc.dart';
import 'application/todo/bloc/controller_bloc.dart';
import 'application/todo/formblock/bloc/todoform_bloc.dart';
import 'application/todo/watch/bloc/observe_bloc.dart';
import 'domain/repository/auth_repository.dart';
import 'domain/repository/news_repository.dart';
import 'infastructure/repositories/news_repository_impls.dart';

final sl = GetIt.I;

Future<void> init() async {
  //? ################ auth ##################
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

  //? ################# todo  #################

  sl.registerFactory(() => ObserveBloc(todoRepository: sl()));
  sl.registerFactory(() => ControllerBloc(todoRepository: sl()));
  sl.registerFactory(() => TodoformBloc(todoRepository: sl()));

  sl.registerLazySingleton<TodoRepository>(
      () => TodoRepositoryImpl(firestore: sl()));

  //? ################# news  #################
  sl.registerFactory(() => ObserverBloc(newsRepository: sl()));
  sl.registerFactory(() => NewsformBloc(newsRepository: sl()));

  //! repo

  sl.registerLazySingleton<NewsRepository>(
      () => NewsRepositoryImpl(firestore: sl()));

  //! extern

  final firestore = FirebaseFirestore.instance;
  sl.registerLazySingleton(() => firestore);
}
