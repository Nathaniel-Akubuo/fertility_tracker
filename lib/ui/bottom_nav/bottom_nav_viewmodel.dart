import 'package:fertility_tracker/ui/home/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

class BottomNavViewModel extends IndexTrackingViewModel {
  List<Widget> pages = [Container(), const HomeView(), Container()];
}
