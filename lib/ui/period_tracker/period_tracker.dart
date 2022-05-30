import 'package:fertility_tracker/constants/constants.dart';
import 'package:fertility_tracker/constants/styles.dart';
import 'package:fertility_tracker/ui/period_tracker/period_tracker_viewmodel.dart';
import 'package:fertility_tracker/ui/period_tracker/widgets/custom_list_tile.dart';
import 'package:fertility_tracker/ui/period_tracker/widgets/period_phase_card.dart';
import 'package:fertility_tracker/widgets/progress_indicators/red_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PeriodTrackerView extends StatelessWidget {
  const PeriodTrackerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PeriodTrackerViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: model.data == null
            ? const RedCircularProgressIndicator()
            : SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: kMainPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: model.navigateToDetails,
                      child: PeriodPhaseCard(
                        phase: model.getPhase(),
                        day: model.daysLeft(),
                      ),
                    ),
                    verticalSpaceMedium,
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
                    verticalSpaceSmall,
                    CustomListTile(
                      text1: 'Fertile phase starts on',
                      text2: model.fertilityStart(),
                    ),
                    verticalSpaceSmall,
                    verticalSpaceSmall,
                    CustomListTile(
                      text1: 'Fertile phase ends on',
                      text2: model.fertilityEnd(),
                    ),
                    verticalSpaceMedium,
                    verticalSpaceTiny,
                    Row(
                      children: [
                        Text(
                          'Insights',
                          style: kSubtitleTextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          ' (Tap to edit)',
                          style: kSubtitleTextStyle.copyWith(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    verticalSpaceSmall,
                    CustomListTile(
                      text1: 'Period length',
                      text2: model.user.averageNumberOfDays.toString(),
                      onTap: () => model.changePeriodDays(context),
                    ),
                    const Divider(height: 40),
                    CustomListTile(
                      text1: 'First day of last period',
                      text2: selectedDateFormatter
                          .format(model.user.lmp!.toDate()),
                      onTap: () => model.changeLMP(context),
                    ),
                    const Divider(height: 40),
                    CustomListTile(
                      text1: 'Average cycle length',
                      text2: model.user.averageCycleLength.toString(),
                      onTap: () => model.changeCycleLength(context),
                    ),
                    const Divider(height: 40),
                    verticalSpaceLarge,
                    verticalSpaceLarge,
                  ],
                ),
              ),
      ),
      viewModelBuilder: () => PeriodTrackerViewModel(),
    );
  }
}
