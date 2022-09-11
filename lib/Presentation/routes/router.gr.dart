// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../ChallangPage/challangepage.dart' as _i6;
import '../landingpage/landingpage.dart' as _i5;
import '../SignUP/signup_page.dart' as _i2;
import '../SplashPage/splashpage.dart' as _i1;
import '../test_page_card.dart' as _i7;
import '../userpage/settings/setting.dart' as _i4;
import '../userpage/user_page.dart' as _i8;
import '../userpage/user_page_menu.dart' as _i9;
import 'pageseroutes.dart' as _i3;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignUpPageRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignUpPage());
    },
    HomePageRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    SettingUserRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SettingUser());
    },
    LandingPageRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.LandingPage());
    },
    ChallengePageRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ChallengePage());
    },
    RealHOmeRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.RealHOme());
    },
    UserPageRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.UserPage());
    },
    UserPageMenuRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.UserPageMenu());
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(SplashPageRoute.name, path: '/'),
        _i10.RouteConfig(SignUpPageRoute.name, path: '/sign-up-page'),
        _i10.RouteConfig(HomePageRoute.name, path: '/home-page', children: [
          _i10.RouteConfig(LandingPageRoute.name,
              path: 'landing-page', parent: HomePageRoute.name),
          _i10.RouteConfig(ChallengePageRoute.name,
              path: 'challenge-page', parent: HomePageRoute.name),
          _i10.RouteConfig(RealHOmeRoute.name,
              path: 'real-hOme', parent: HomePageRoute.name),
          _i10.RouteConfig(UserPageRoute.name,
              path: 'user-page', parent: HomePageRoute.name),
          _i10.RouteConfig(UserPageMenuRoute.name,
              path: 'user-page-menu', parent: HomePageRoute.name)
        ]),
        _i10.RouteConfig(SettingUserRoute.name, path: '/setting-user')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i10.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignUpPage]
class SignUpPageRoute extends _i10.PageRouteInfo<void> {
  const SignUpPageRoute() : super(SignUpPageRoute.name, path: '/sign-up-page');

  static const String name = 'SignUpPageRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomePageRoute extends _i10.PageRouteInfo<void> {
  const HomePageRoute({List<_i10.PageRouteInfo>? children})
      : super(HomePageRoute.name,
            path: '/home-page', initialChildren: children);

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i4.SettingUser]
class SettingUserRoute extends _i10.PageRouteInfo<void> {
  const SettingUserRoute()
      : super(SettingUserRoute.name, path: '/setting-user');

  static const String name = 'SettingUserRoute';
}

/// generated route for
/// [_i5.LandingPage]
class LandingPageRoute extends _i10.PageRouteInfo<void> {
  const LandingPageRoute() : super(LandingPageRoute.name, path: 'landing-page');

  static const String name = 'LandingPageRoute';
}

/// generated route for
/// [_i6.ChallengePage]
class ChallengePageRoute extends _i10.PageRouteInfo<void> {
  const ChallengePageRoute()
      : super(ChallengePageRoute.name, path: 'challenge-page');

  static const String name = 'ChallengePageRoute';
}

/// generated route for
/// [_i7.RealHOme]
class RealHOmeRoute extends _i10.PageRouteInfo<void> {
  const RealHOmeRoute() : super(RealHOmeRoute.name, path: 'real-hOme');

  static const String name = 'RealHOmeRoute';
}

/// generated route for
/// [_i8.UserPage]
class UserPageRoute extends _i10.PageRouteInfo<void> {
  const UserPageRoute() : super(UserPageRoute.name, path: 'user-page');

  static const String name = 'UserPageRoute';
}

/// generated route for
/// [_i9.UserPageMenu]
class UserPageMenuRoute extends _i10.PageRouteInfo<void> {
  const UserPageMenuRoute()
      : super(UserPageMenuRoute.name, path: 'user-page-menu');

  static const String name = 'UserPageMenuRoute';
}
