import 'package:fertility_tracker/constants/styles.dart';
import 'package:fertility_tracker/ui/bottom_nav/bottom_nav_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:stacked/stacked.dart';

class BottomNavView extends StatelessWidget {
  const BottomNavView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomNavViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: IndexedStack(index: model.currentIndex, children: model.pages),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedItemColor: kGreen,
          currentIndex: model.currentIndex,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          onTap: model.setIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.calendar),
                activeIcon: Icon(IconlyBold.calendar),
                label: 'Period'),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.home),
                activeIcon: Icon(IconlyBold.home),
                label: 'Pregnancy'),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.profile),
                activeIcon: Icon(IconlyBold.profile),
                label: 'Fertility'),
          ],
        ),
      ),
      viewModelBuilder: () => BottomNavViewModel(),
    );
  }
}
