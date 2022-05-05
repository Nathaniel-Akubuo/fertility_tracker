import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:fertility_tracker/constants/styles.dart';
import 'package:fertility_tracker/ui/period_tracker/period_tracker_viewmodel.dart';
import 'package:fertility_tracker/ui/period_tracker/widgets/custom_list_tile.dart';
import 'package:fertility_tracker/ui/period_tracker/widgets/period_phase_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class PeriodTrackerView extends StatelessWidget {
  const PeriodTrackerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PeriodTrackerViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: kMainPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DatePicker(
                DateTime.now(),
                selectionColor: kRed.withOpacity(0.05),
                selectedTextColor: Colors.black,
                initialSelectedDate: DateTime.now(),
                daysCount: 7,
              ),
              verticalSpaceMedium,
              const PeriodPhaseCard(),
              verticalSpaceMedium,
              const CustomListTile(
                text1: 'Chance of pregnancy',
                text2: 'Low',
              ),
              verticalSpaceSmall,
              verticalSpaceSmall,
              const CustomListTile(
                text1: 'Next period starts on',
                text2: '14 Dec',
              ),
              verticalSpaceSmall,
              verticalSpaceSmall,
              const CustomListTile(
                text1: 'Fertile phase starts on',
                text2: '20 Dec',
              ),
              verticalSpaceMedium,
              verticalSpaceTiny,
              Text(
                'Insights',
                style: kSubtitleTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              verticalSpaceTiny,
              Container(
                width: MediaQuery.of(context).size.width,
                padding: kMainPadding,
                decoration: BoxDecoration(
                  color: kRed.withOpacity(0.05),
                  borderRadius: k16pxBorderRadius,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    verticalSpaceRegular,
                    Text(
                      'Average cycle length',
                      style: kSubtitleTextStyle.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    verticalSpaceMedium,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '28',
                          style: kSubtitleTextStyle.copyWith(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        horizontalSpaceTiny,
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text('days', style: kSubtitleTextStyle),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              verticalSpaceMedium,
              const CustomListTile(
                text1: 'Period length',
                text2: '2 days',
              ),
              const Divider(height: 40),
              const CustomListTile(
                text1: 'Shortest cycle',
                text2: '24 days',
              ),
              const Divider(height: 40),
              const CustomListTile(
                text1: 'Longest cycle',
                text2: '32 days',
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
