// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../ui/bottom_nav/bottom_nav.dart';
import '../ui/pregnancy/pregnancy_view.dart';
import '../ui/pregnancy/widgets/pregnancy_details_widget.dart';
import '../ui/login/login_view.dart';
import '../ui/period_tracker/period_tracker.dart';
import '../ui/register/register_view.dart';

class Routes {
  static const String registerView = '/register-view';
  static const String loginView = '/login-view';
  static const String bottomNavView = '/bottom-nav-view';
  static const String homeView = '/home-view';
  static const String pregnancyDetails = '/pregnancy-details';
  static const String periodTrackerView = '/period-tracker-view';
  static const all = <String>{
    registerView,
    loginView,
    bottomNavView,
    homeView,
    pregnancyDetails,
    periodTrackerView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.registerView, page: RegisterView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.bottomNavView, page: BottomNavView),
    RouteDef(Routes.homeView, page: PregnancyView),
    RouteDef(Routes.pregnancyDetails, page: PregnancyDetails),
    RouteDef(Routes.periodTrackerView, page: PeriodTrackerView),
  ];

  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    RegisterView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const RegisterView(),
        settings: data,
      );
    },
    LoginView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const LoginView(),
        settings: data,
      );
    },
    BottomNavView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const BottomNavView(),
        settings: data,
      );
    },
    PregnancyView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const PregnancyView(),
        settings: data,
      );
    },
    PregnancyDetails: (data) {
      var args = data.getArgs<PregnancyDetailsArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => PregnancyDetails(
          key: args.key,
          lmp: args.lmp,
        ),
        settings: data,
      );
    },
    PeriodTrackerView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const PeriodTrackerView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// PregnancyDetails arguments holder class
class PregnancyDetailsArguments {
  final Key? key;
  final DateTime lmp;

  PregnancyDetailsArguments({this.key, required this.lmp});
}
