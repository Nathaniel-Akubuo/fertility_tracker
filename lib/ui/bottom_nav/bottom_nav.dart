import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:fertility_tracker/constants/styles.dart';
import 'package:fertility_tracker/ui/bottom_nav/bottom_nav_viewmodel.dart';
import 'package:fertility_tracker/widgets/progress_indicators/red_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class BottomNavView extends StatelessWidget {
  const BottomNavView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomNavViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Image.asset('assets/logo.png', height: 30),
          ),
          centerTitle: false,
          iconTheme: const IconThemeData(color: kRed),
          backgroundColor: Colors.white,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Good morning',
                  style: kSubtitleTextStyle.copyWith(fontSize: 12)),
              Text(model.user.name ?? '',
                  style: kSubtitleTextStyle.copyWith(
                      fontWeight: FontWeight.bold, fontSize: 16)),
            ],
          ),
          actions: [
            Center(
              child: model.isBusy
                  ? const RedCircularProgressIndicator()
                  : TextButton(
                      child: Text('LOGOUT',
                          style: kButtonTextStyle.copyWith(
                            color: kRed,
                            fontWeight: FontWeight.bold,
                          )),
                      onPressed: () => model.logout(context),
                    ),
            ),
            const SizedBox(width: 16)
          ],
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
              icon: Image.asset('assets/menstrual-cycle.png',
                  color: Colors.white, height: 25),
            ),
            DotNavigationBarItem(
              icon: Image.asset('assets/fetus.png',
                  color: Colors.white, height: 25),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => BottomNavViewModel(),
    );
  }
}
