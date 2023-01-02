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
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../../domain/enitys/news/news.dart' as _i14;
import '../ChallangPage/challangepage.dart' as _i4;
import '../function/function.dart' as _i8;
import '../landingpage/landingpage.dart' as _i7;
import '../news/newsDetail.dart' as _i5;
import '../news/newsform.dart' as _i6;
import '../SignUP/signup_page.dart' as _i2;
import '../SplashPage/splashpage.dart' as _i1;
import '../test_page_card.dart' as _i9;
import '../userpage/user_page.dart' as _i10;
import '../userpage/user_page_menu.dart' as _i11;
import 'pageseroutes.dart' as _i3;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignUpPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SignUpPage());
    },
    HomePageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    },
    ChallengePageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.ChallengePage());
    },
    NewsDetailRoute.name: (routeData) {
      final args = routeData.argsAs<NewsDetailRouteArgs>(
          orElse: () => const NewsDetailRouteArgs());
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.NewsDetail(key: args.key, news: args.news),
          fullscreenDialog: true);
    },
    NewsFormRoute.name: (routeData) {
      final args = routeData.argsAs<NewsFormRouteArgs>();
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.NewsForm(key: args.key, news: args.news),
          fullscreenDialog: true);
    },
    LandingPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.LandingPage());
    },
    FunctionPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.FunctionPage());
    },
    RealHOmeRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.RealHOme());
    },
    UserPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.UserPage());
    },
    UserPageMenuRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.UserPageMenu());
    }
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(SplashPageRoute.name, path: '/'),
        _i12.RouteConfig(SignUpPageRoute.name, path: '/sign-up-page'),
        _i12.RouteConfig(HomePageRoute.name, path: '/home-page', children: [
          _i12.RouteConfig(LandingPageRoute.name,
              path: 'landing-page', parent: HomePageRoute.name),
          _i12.RouteConfig(FunctionPageRoute.name,
              path: 'function-page', parent: HomePageRoute.name),
          _i12.RouteConfig(RealHOmeRoute.name,
              path: 'real-hOme', parent: HomePageRoute.name),
          _i12.RouteConfig(UserPageRoute.name,
              path: 'user-page', parent: HomePageRoute.name),
          _i12.RouteConfig(UserPageMenuRoute.name,
              path: 'user-page-menu', parent: HomePageRoute.name)
        ]),
        _i12.RouteConfig(ChallengePageRoute.name, path: '/challenge-page'),
        _i12.RouteConfig(NewsDetailRoute.name, path: '/news-detail'),
        _i12.RouteConfig(NewsFormRoute.name, path: '/news-form')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i12.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignUpPage]
class SignUpPageRoute extends _i12.PageRouteInfo<void> {
  const SignUpPageRoute() : super(SignUpPageRoute.name, path: '/sign-up-page');

  static const String name = 'SignUpPageRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomePageRoute extends _i12.PageRouteInfo<void> {
  const HomePageRoute({List<_i12.PageRouteInfo>? children})
      : super(HomePageRoute.name,
            path: '/home-page', initialChildren: children);

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i4.ChallengePage]
class ChallengePageRoute extends _i12.PageRouteInfo<void> {
  const ChallengePageRoute()
      : super(ChallengePageRoute.name, path: '/challenge-page');

  static const String name = 'ChallengePageRoute';
}

/// generated route for
/// [_i5.NewsDetail]
class NewsDetailRoute extends _i12.PageRouteInfo<NewsDetailRouteArgs> {
  NewsDetailRoute({_i13.Key? key, _i14.News? news})
      : super(NewsDetailRoute.name,
            path: '/news-detail',
            args: NewsDetailRouteArgs(key: key, news: news));

  static const String name = 'NewsDetailRoute';
}

class NewsDetailRouteArgs {
  const NewsDetailRouteArgs({this.key, this.news});

  final _i13.Key? key;

  final _i14.News? news;

  @override
  String toString() {
    return 'NewsDetailRouteArgs{key: $key, news: $news}';
  }
}

/// generated route for
/// [_i6.NewsForm]
class NewsFormRoute extends _i12.PageRouteInfo<NewsFormRouteArgs> {
  NewsFormRoute({_i13.Key? key, required _i14.News? news})
      : super(NewsFormRoute.name,
            path: '/news-form', args: NewsFormRouteArgs(key: key, news: news));

  static const String name = 'NewsFormRoute';
}

class NewsFormRouteArgs {
  const NewsFormRouteArgs({this.key, required this.news});

  final _i13.Key? key;

  final _i14.News? news;

  @override
  String toString() {
    return 'NewsFormRouteArgs{key: $key, news: $news}';
  }
}

/// generated route for
/// [_i7.LandingPage]
class LandingPageRoute extends _i12.PageRouteInfo<void> {
  const LandingPageRoute() : super(LandingPageRoute.name, path: 'landing-page');

  static const String name = 'LandingPageRoute';
}

/// generated route for
/// [_i8.FunctionPage]
class FunctionPageRoute extends _i12.PageRouteInfo<void> {
  const FunctionPageRoute()
      : super(FunctionPageRoute.name, path: 'function-page');

  static const String name = 'FunctionPageRoute';
}

/// generated route for
/// [_i9.RealHOme]
class RealHOmeRoute extends _i12.PageRouteInfo<void> {
  const RealHOmeRoute() : super(RealHOmeRoute.name, path: 'real-hOme');

  static const String name = 'RealHOmeRoute';
}

/// generated route for
/// [_i10.UserPage]
class UserPageRoute extends _i12.PageRouteInfo<void> {
  const UserPageRoute() : super(UserPageRoute.name, path: 'user-page');

  static const String name = 'UserPageRoute';
}

/// generated route for
/// [_i11.UserPageMenu]
class UserPageMenuRoute extends _i12.PageRouteInfo<void> {
  const UserPageMenuRoute()
      : super(UserPageMenuRoute.name, path: 'user-page-menu');

  static const String name = 'UserPageMenuRoute';
}
