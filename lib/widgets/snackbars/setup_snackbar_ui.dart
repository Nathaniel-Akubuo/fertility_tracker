import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';

/// The type of snackbar to show
enum SnackBarType { success, failure }

void setupSnackBarUi() {
  final service = locator<SnackbarService>();

  service.registerCustomSnackbarConfig(
    variant: SnackBarType.success,
    config: SnackbarConfig(
      backgroundColor: Colors.green,
      textColor: Colors.white,
      borderRadius: 16,
      snackStyle: SnackStyle.FLOATING,

      messageTextAlign: TextAlign.center,
      dismissDirection: DismissDirection.horizontal,
    ),
  );

  service.registerCustomSnackbarConfig(
    variant: SnackBarType.failure,
    config: SnackbarConfig(
      backgroundColor: Colors.red,
      textColor: Colors.white,
      borderRadius: 16,
      dismissDirection: DismissDirection.horizontal,
    ),
  );
}
