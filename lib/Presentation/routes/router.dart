import 'package:auto_route/auto_route.dart';
import 'package:button_future/Presentation/Home/LandingPage.dart';
import 'package:button_future/Presentation/SignUP/signup_page.dart';
import 'package:button_future/Presentation/SplashPage/splashpage.dart';
import 'package:button_future/Presentation/TestCardPagfe.dart';
import 'package:button_future/Presentation/routes/pageseroutes.dart';

import '../ChallangPage/ChallengePage.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SplashPage, initial: true),
  AutoRoute(page: SignUpPage, initial: false),
  AutoRoute(page: HomePage, initial: false, children: [
    AutoRoute(page: LandingPage, initial: true),
    AutoRoute(page: ChallengePage, initial: false),
    AutoRoute(page: RealHOme, initial: false),
  ]),
])
class $AppRouter {}
