import 'package:fertility_tracker/ui/period_tracker/period_tracker_viewmodel.dart';
import 'package:fertility_tracker/ui/period_tracker/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../constants/styles.dart';

class PeriodDetailsView extends StatelessWidget {
  const PeriodDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PeriodTrackerViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
            ),
            verticalSpaceMedium,
            Padding(
              padding: kMainPadding,
              child: Column(
                children: [
                  CustomListTile(
                    text1: 'Chance of pregnancy',
                    text2: model.chanceOfPregnancy(),
                  ),
                  verticalSpaceSmall,
                  verticalSpaceSmall,
                  CustomListTile(
                    text1: 'Next period starts on',
                    text2: model.nextPeriod(),
                  ),
                  verticalSpaceSmall,
                ],
              ),
            )

          ],
        )
      ),
      viewModelBuilder: () => PeriodTrackerViewModel(),
    );
  }
}
