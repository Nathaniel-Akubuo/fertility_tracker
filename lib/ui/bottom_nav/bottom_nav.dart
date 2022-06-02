import 'package:fertility_tracker/constants/styles.dart';
import 'package:fertility_tracker/models/user_model.dart';
import 'package:fertility_tracker/ui/bottom_nav/bottom_nav_viewmodel.dart';
import 'package:fertility_tracker/ui/period_tracker/period_tracker.dart';
import 'package:fertility_tracker/widgets/progress_indicators/red_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../pregnancy/pregnancy_view.dart';

class BottomNavView extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); //
  BottomNavView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomNavViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        key: _key,
        drawer: Drawer(
          child: Padding(
            padding: kMainPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/logo.png', height: 150),
                verticalSpaceSmall,
                Text(
                  model.user.name ?? '',
                  style: kSubtitleTextStyle,
                ),
                Text(
                  model.user.email ?? '',
                  style:
                      kSubtitleTextStyle.copyWith(fontStyle: FontStyle.italic),
                ),
                Visibility(
                  visible: model.user.userMode != UserMode.pregnancy,
                  child: ListTile(
                    leading: const Icon(
                      Icons.sync_alt_rounded,
                      color: kRed,
                    ),
                    contentPadding: EdgeInsets.zero,
                    onTap: () {
                      model.updateUserMode(fertility: false);
                      Navigator.pop(context);
                    },
                    title: Text(
                      'Switch to pregnancy tracker',
                      style: kSubtitleTextStyle.copyWith(
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Visibility(
                  visible: model.user.userMode == UserMode.pregnancy,
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const Icon(
                      Icons.sync_alt_rounded,
                      color: kRed,
                    ),
                    onTap: () {
                      model.updateUserMode(fertility: true);
                      Navigator.pop(context);
                    },
                    title: Text(
                      'Switch to fertility tracker',
                      style: kSubtitleTextStyle.copyWith(
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 14),
            child: GestureDetector(
              onTap: () => _key.currentState!.openDrawer(),
              child: Image.asset('assets/logo.png', height: 30),
            ),
          ),
          centerTitle: false,
          iconTheme: const IconThemeData(color: kRed),
          backgroundColor: Colors.white,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello', style: kSubtitleTextStyle.copyWith(fontSize: 12)),
              Text(
                model.firstName,
                style: kSubtitleTextStyle.copyWith(
                    fontWeight: FontWeight.bold, fontSize: 16),
              ),
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
        body: model.user.userMode == UserMode.pregnancy
            ? const PregnancyView()
            : const PeriodTrackerView(),
        // bottomNavigationBar: DotNavigationBar(
        //   backgroundColor: kRed,
        //   selectedItemColor: Colors.white,
        //   currentIndex: model.currentIndex,
        //   unselectedItemColor: Colors.white,
        //   onTap: (value) => model.setIndex(value),
        //   paddingR: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        //   enablePaddingAnimation: false,
        //   itemPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        //   items: [
        //     DotNavigationBarItem(
        //       icon: Image.asset('assets/menstrual-cycle.png',
        //           color: Colors.white, height: 25),
        //     ),
        //     DotNavigationBarItem(
        //       icon: Image.asset('assets/fetus.png',
        //           color: Colors.white, height: 25),
        //     ),
        //   ],
        // ),
      ),
      viewModelBuilder: () => BottomNavViewModel(),
    );
  }
}
