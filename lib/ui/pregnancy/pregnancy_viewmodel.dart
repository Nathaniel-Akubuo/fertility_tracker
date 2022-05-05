import 'package:fertility_tracker/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';

class PregnancyViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void stuff() {
    _navigationService.navigateTo(
      Routes.pregnancyDetails,
      arguments: PregnancyDetailsArguments(
        lmp: DateTime.now().subtract(
          const Duration(days: 126),
        ),
      ),
    );
  }
}
