import 'package:fertility_tracker/ui/period_tracker/period_tracker.dart';
import 'package:fertility_tracker/ui/pregnancy/pregnancy_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class BottomNavViewModel extends IndexTrackingViewModel {
  List<Widget> pages = [const PeriodTrackerView(), const PregnancyView(), Column()];
}
