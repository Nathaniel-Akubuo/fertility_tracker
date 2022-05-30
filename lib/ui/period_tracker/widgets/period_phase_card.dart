import 'package:flutter/material.dart';

import '../../../constants/styles.dart';

class PeriodPhaseCard extends StatelessWidget {
  final String day;
  final String phase;

  const PeriodPhaseCard({Key? key, required this.day, required this.phase})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 250,
        width: 250,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: kRed.withOpacity(0.3),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Period',
                style:
                    kSubtitleTextStyle.copyWith(fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(day, style: kTitleTextStyle.copyWith(fontSize: 80)),
                  horizontalSpaceSmall,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('days', style: kSubtitleTextStyle),
                      Text('left', style: kSubtitleTextStyle),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
