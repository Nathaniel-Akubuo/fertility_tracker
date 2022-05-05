import 'package:fertility_tracker/models/pregnancy_week_details.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../constants/styles.dart';
import '../../../services/calculation_service.dart';

class PregnancyDetails extends StatelessWidget {
  final DateTime lmp;

  const PregnancyDetails({Key? key, required this.lmp}) : super(key: key);

  int _week() {
    final now = DateTime.now();
    final difference = now.difference(lmp);
    var week = (difference.inDays / 7).floor();
    if (week == 0) {
      week = 1;
    } else if (week > 39) {
      week = 39;
    }
    return week;
  }

  DateTime _dueDate() {
    var value = CalculationService.calculateDueDate(lmp);
    return value!;
  }

  PregnancyWeekDetails get detail =>
      pregnancyDetailsList.firstWhere((element) => element.week == _week());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Hero(
                tag: 'tag',
                child: ClipPath(
                  clipper: CurveClipper(),
                  child: Image.asset(
                    'assets/week${_week()}.jpg',
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
            ),
            verticalSpaceRegular,
            Padding(
              padding: kMainPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: kRed,
                        child: Icon(
                          Icons.child_friendly_rounded,
                          color: Colors.white,
                        ),
                      ),
                      horizontalSpaceRegular,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Due date:',
                            style: kSubtitleTextStyle.copyWith(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            groupSeparatorFormatter.format(_dueDate()),
                            style: kSubtitleTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  verticalSpaceMedium,
                  Visibility(
                    visible: detail.weekDetails.isNotEmpty,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'WEEK ${_week()} OF PREGNANCY',
                          style: kSubtitleTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(detail.weekDetails,
                            style: kSubtitleTextStyle.copyWith(
                                color: Colors.grey)),
                        verticalSpaceRegular,
                      ],
                    ),
                  ),
                  Visibility(
                    visible: detail.bodyChanges.isNotEmpty,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'BODY CHANGES',
                          style: kSubtitleTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(detail.bodyChanges,
                            style: kSubtitleTextStyle.copyWith(
                                color: Colors.grey)),
                        verticalSpaceRegular,
                      ],
                    ),
                  ),
                  Visibility(
                    visible: detail.tips.isNotEmpty,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TIPS FOR THE WEEK',
                          style: kSubtitleTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ...detail.tips.map(
                          (e) => Text(
                            e,
                            style:
                                kSubtitleTextStyle.copyWith(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalSpaceRegular,
                  verticalSpaceLarge,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    int curveHeight = 40;
    Offset controlPoint = Offset(size.width / 2, size.height + curveHeight);
    Offset endPoint = Offset(size.width, size.height - curveHeight);

    Path path = Path()
      ..lineTo(0, size.height - curveHeight)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
