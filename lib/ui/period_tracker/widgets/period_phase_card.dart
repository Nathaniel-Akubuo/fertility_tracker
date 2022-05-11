import 'package:flutter/material.dart';

import '../../../constants/styles.dart';

class PeriodPhaseCard extends StatelessWidget {
  final String day;
  final String phase;

  const PeriodPhaseCard({Key? key, required this.day, required this.phase}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2000),
        ),
        child: Container(
          height: size.width - 80,
          width: size.width - 80,
          decoration: BoxDecoration(
            border: Border.all(
              color: kRed.withOpacity(0.3),
            ),
            borderRadius: BorderRadius.circular(2000),
          ),
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                verticalSpaceRegular,
                const Icon(Icons.female, color: kBlack, size: 40),
                verticalSpaceRegular,
                Text(
                  phase,
                  style: kSubtitleTextStyle.copyWith(
                      color: Colors.grey[700], fontSize: 22),
                ),
                verticalSpaceRegular,
                Text(
                  'day',
                  style:
                      kSubtitleTextStyle.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  day,
                  style: kSubtitleTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
