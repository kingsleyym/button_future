import 'package:button_future/firebase_options.dart';
import 'package:button_future/injecton.dart' as di;
import 'package:button_future/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'Presentation/routes/router.gr.dart' as r;
import 'api/theme_service.dart';
import 'application/auth/auth/auth_bloc.dart';
import 'application/news/observe/observe_bloc.dart';
import 'injecton.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await di.init();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    //This line is used for showing the bottom bar
  ]);

  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = r.AppRouter();
  @override
  Widget build(BuildContext context) {
    final observerBloc = sl<ObserverBloc>()..add(ObserverAll());
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => sl<AuthBloc>()..add(AuthCheckRequestedEvent()),
          ),
          BlocProvider(
            create: (context) => observerBloc,
          ),
        ],
        child: MaterialApp.router(
          routeInformationParser: _appRouter.defaultRouteParser(),
          routerDelegate: _appRouter.delegate(),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode:
              themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
        ),
      );
    });
  }
}
