import 'package:fertility_tracker/services/auth_service.dart';
import 'package:fertility_tracker/ui/bottom_nav/bottom_nav.dart';
import 'package:fertility_tracker/ui/home/home_view.dart';
import 'package:fertility_tracker/ui/login/login_view.dart';
import 'package:fertility_tracker/ui/register/register_view.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/local_storage_services.dart';

@StackedApp(
  routes: [
    CupertinoRoute(page: RegisterView),
    CupertinoRoute(page: LoginView),
    CupertinoRoute(page: BottomNavView),
    CupertinoRoute(page: HomeView),
  ],
  dependencies: [
    LazySingleton(classType: AuthService),
    LazySingleton(classType: NavigationService),
    Presolve(
      classType: SharedPreferenceLocalStorage,
      presolveUsing: SharedPreferences.getInstance,
    ),
  ],
)
class AppSetup {}
