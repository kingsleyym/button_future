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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../ChallangPage/challangepage.dart' as _i5;
import '../landingpage/landingpage.dart' as _i4;
import '../SignUP/signup_page.dart' as _i2;
import '../SplashPage/splashpage.dart' as _i1;
import '../test_page_card.dart' as _i6;
import 'pageseroutes.dart' as _i3;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignUpPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignUpPage());
    },
    HomePageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    LandingPageRoute.name: (routeData) {
      final args = routeData.argsAs<LandingPageRouteArgs>(
          orElse: () => const LandingPageRouteArgs());
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.LandingPage(key: args.key));
    },
    ChallengePageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ChallengePage());
    },
    RealHOmeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.RealHOme());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(SplashPageRoute.name, path: '/'),
        _i7.RouteConfig(SignUpPageRoute.name, path: '/sign-up-page'),
        _i7.RouteConfig(HomePageRoute.name, path: '/home-page', children: [
          _i7.RouteConfig(LandingPageRoute.name,
              path: 'landing-page', parent: HomePageRoute.name),
          _i7.RouteConfig(ChallengePageRoute.name,
              path: 'challenge-page', parent: HomePageRoute.name),
          _i7.RouteConfig(RealHOmeRoute.name,
              path: 'real-hOme', parent: HomePageRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i7.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignUpPage]
class SignUpPageRoute extends _i7.PageRouteInfo<void> {
  const SignUpPageRoute() : super(SignUpPageRoute.name, path: '/sign-up-page');

  static const String name = 'SignUpPageRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomePageRoute extends _i7.PageRouteInfo<void> {
  const HomePageRoute({List<_i7.PageRouteInfo>? children})
      : super(HomePageRoute.name,
            path: '/home-page', initialChildren: children);

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i4.LandingPage]
class LandingPageRoute extends _i7.PageRouteInfo<LandingPageRouteArgs> {
  LandingPageRoute({_i8.Key? key})
      : super(LandingPageRoute.name,
            path: 'landing-page', args: LandingPageRouteArgs(key: key));

  static const String name = 'LandingPageRoute';
}

class LandingPageRouteArgs {
  const LandingPageRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'LandingPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.ChallengePage]
class ChallengePageRoute extends _i7.PageRouteInfo<void> {
  const ChallengePageRoute()
      : super(ChallengePageRoute.name, path: 'challenge-page');

  static const String name = 'ChallengePageRoute';
}

/// generated route for
/// [_i6.RealHOme]
class RealHOmeRoute extends _i7.PageRouteInfo<void> {
  const RealHOmeRoute() : super(RealHOmeRoute.name, path: 'real-hOme');

  static const String name = 'RealHOmeRoute';
}
