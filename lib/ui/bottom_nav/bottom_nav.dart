import 'package:dot_navigation_bar/dot_navigation_bar.dart';
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
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Good morning',
                      style: kSubtitleTextStyle.copyWith(fontSize: 12)),
                  Text('Jane Doe',
                      style: kSubtitleTextStyle.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 16)),
                ],
              ),
              Image.asset('assets/logo.png', height: 30),
            ],
          ),
        ),

        extendBody: true,
        body: IndexedStack(index: model.currentIndex, children: model.pages),
        bottomNavigationBar: DotNavigationBar(
          backgroundColor: kRed,
          selectedItemColor: Colors.white,
          currentIndex: model.currentIndex,
          unselectedItemColor: Colors.white,
          onTap: (value) => model.setIndex(value),
          paddingR: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          enablePaddingAnimation: false,
          itemPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          items: [
            DotNavigationBarItem(
              icon: const Icon(IconlyLight.calendar),
            ),
            DotNavigationBarItem(
              icon: const Icon(IconlyLight.home),
            ),
            DotNavigationBarItem(
              icon: Icon(IconlyLight.profile),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => BottomNavViewModel(),
    );
  }
}
