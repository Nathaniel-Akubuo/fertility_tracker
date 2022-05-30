import 'package:fertility_tracker/constants/constants.dart';
import 'package:fertility_tracker/ui/period_tracker/period_tracker_viewmodel.dart';
import 'package:fertility_tracker/ui/period_tracker/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../constants/styles.dart';

class PeriodDetailsView extends StatefulWidget {
  final DateTime lmp;
  final int averageCycleLength;
  final int averageNumberOfDays;

  const PeriodDetailsView({
    Key? key,
    required this.lmp,
    required this.averageCycleLength,
    required this.averageNumberOfDays,
  }) : super(key: key);

  @override
  State<PeriodDetailsView> createState() => _PeriodDetailsViewState();
}

class _PeriodDetailsViewState extends State<PeriodDetailsView> {
  CalendarFormat _format = CalendarFormat.month;

  void _onFormatChanged(CalendarFormat format) {
    setState(() => _format = format);
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PeriodTrackerViewModel>.reactive(
      onModelReady: (model) {
        model.lmp = widget.lmp;
        model.averageCycleLength = widget.averageCycleLength;
        model.averageNumberOfDays = widget.averageNumberOfDays;
      },
      builder: (context, model, child) => Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            padding: kMainPadding,
            child: Column(
              children: [
                TableCalendar(
                  firstDay: model.calendarRange().start,
                  lastDay: model.calendarRange().end,
                  focusedDay: model.selectedDate,
                  currentDay: model.selectedDate,
                  calendarFormat: _format,
                  onFormatChanged: _onFormatChanged,
                  eventLoader: (date) => model.periodBuilder(date),
                  onDaySelected: (date, _) => model.selectDate(date),
                  rangeStartDay: model.range.start,
                  rangeEndDay: model.range.end,
                  calendarStyle: CalendarStyle(
                    defaultTextStyle: kSubtitleTextStyle,
                    todayDecoration: BoxDecoration(
                      color: kRed.withOpacity(0.3),
                      shape: BoxShape.circle,
                    ),
                    selectedDecoration: BoxDecoration(
                      color: kRed.withOpacity(0.3),
                      shape: BoxShape.circle,
                    ),
                    outsideDaysVisible: false,
                    rangeHighlightColor: Colors.transparent,
                    withinRangeTextStyle:
                        kSubtitleTextStyle.copyWith(color: kWhite),
                    rangeStartDecoration: const BoxDecoration(
                      color: kGreen,
                      shape: BoxShape.circle,
                    ),
                    rangeEndDecoration: const BoxDecoration(
                      color: kGreen,
                      shape: BoxShape.circle,
                    ),
                    withinRangeDecoration: const BoxDecoration(
                      color: kGreen,
                      shape: BoxShape.circle,
                    ),
                    markerDecoration: const BoxDecoration(
                      color: kRed,
                      shape: BoxShape.circle,
                    ),
                  ),
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    formatButtonShowsNext: false,
                    leftChevronVisible: false,
                    rightChevronVisible: false,
                    headerPadding: kMainPadding,
                    titleTextStyle: kSubtitleTextStyle,
                  ),
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Spacer(),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: kRed),
                    ),
                    horizontalSpaceTiny,
                    Text('Period', style: kSubtitleTextStyle),
                    const Spacer(),
                    Container(
                      height: 10,
                      width: 10,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: kGreen),
                    ),
                    horizontalSpaceTiny,
                    Text('Fertility window', style: kSubtitleTextStyle),
                    const Spacer()
                  ],
                ),
                const Divider(),
                verticalSpaceMedium,
                Padding(
                  padding: kMainPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        selectedDateFormatter.format(model.selectedDate),
                        style: kSubtitleTextStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      verticalSpaceSmall,
                      CustomListTile(
                        text1: 'Chance of pregnancy',
                        text2: model.chanceOfPregnancyForDate(),
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
            ),
          )),
      viewModelBuilder: () => PeriodTrackerViewModel(),
    );
  }
}
