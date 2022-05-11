import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:fertility_tracker/ui/fertility_tracker/fertillity_tracker_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../constants/styles.dart';
import '../../widgets/progress_indicators/red_circular_progress_indicator.dart';

class FertilityTrackerView extends StatelessWidget {
  const FertilityTrackerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FertilityViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: model.data == null
            ? const RedCircularProgressIndicator()
            : SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: kMainPadding,
                child: Column(
                  children: [
                    DatePicker(
                      DateTime.now(),
                      selectionColor: kRed.withOpacity(0.05),
                      selectedTextColor: Colors.black,
                      initialSelectedDate: DateTime.now(),
                      daysCount: 7,
                    ),

                  ],
                ),
              ),
      ),
      viewModelBuilder: () => FertilityViewModel(),
    );
  }
}
