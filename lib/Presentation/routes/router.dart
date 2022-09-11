import 'package:auto_route/auto_route.dart';
import 'package:button_future/Presentation/landingpage/landingpage.dart';
import 'package:button_future/Presentation/SignUP/signup_page.dart';
import 'package:button_future/Presentation/SplashPage/splashpage.dart';
import 'package:button_future/Presentation/test_page_card.dart';
import 'package:button_future/Presentation/routes/pageseroutes.dart';
import 'package:button_future/Presentation/userpage/settings/setting.dart';
import 'package:button_future/Presentation/userpage/user_page.dart';

import '../ChallangPage/challangepage.dart';
import '../userpage/user_page_menu.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SplashPage, initial: true),
  AutoRoute(page: SignUpPage, initial: false),
  AutoRoute(page: HomePage, initial: false, children: [
    AutoRoute(page: LandingPage, initial: false),
    AutoRoute(page: ChallengePage, initial: false),
    AutoRoute(page: RealHOme, initial: false),
    AutoRoute(page: UserPage, initial: false),
    AutoRoute(page: UserPageMenu, initial: false),
  ]),
  AutoRoute(page: SettingUser, initial: false),
])
class $AppRouter {}
