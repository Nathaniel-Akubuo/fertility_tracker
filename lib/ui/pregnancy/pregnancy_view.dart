import 'package:fertility_tracker/constants/styles.dart';
import 'package:fertility_tracker/ui/pregnancy/pregnancy_viewmodel.dart';
import 'package:fertility_tracker/widgets/progress_indicators/red_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../constants/constants.dart';
import '../pregnancy/widgets/pregnancy_details_widget.dart';

class PregnancyView extends StatelessWidget {
  const PregnancyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PregnancyViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: model.data == null
            ? const RedCircularProgressIndicator()
            : SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: GestureDetector(
                  onTap: model.stuff,
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Hero(
                          tag: 'tag',
                          child: ClipPath(
                            clipper: CurveClipper(),
                            child: Image.asset(
                              'assets/week${model.week}.jpg',
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: kMainPadding,
                        child: Column(
                          children: [
                            verticalSpaceRegular,
                            Container(
                              padding: kMainPadding,
                              decoration: BoxDecoration(
                                color: kRed.withOpacity(0.05),
                                borderRadius: k16pxBorderRadius,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Visibility(
                                        visible: model.week != 1,
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          icon:
                                              const Icon(Icons.arrow_back_ios),
                                          onPressed: () => model.setDate(forward: false),
                                        ),
                                      ),
                                      const Spacer(),
                                      Visibility(
                                        visible:
                                            model.week != model.currentWeek,
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          icon: const Icon(
                                              Icons.arrow_forward_ios),
                                          onPressed: () => model.setDate(),
                                        ),
                                      ),
                                    ],
                                  ),
                                  verticalSpaceRegular,
                                  Row(
                                    children: [
                                      Text(
                                        'Week ${model.week}',
                                        style: kSubtitleTextStyle.copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const Spacer(),
                                      Text(
                                        '${model.trimester()} trimester',
                                        style: kSubtitleTextStyle.copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  verticalSpaceMedium,
                                  Row(
                                    children: [
                                      Text(
                                        'Av size',
                                        style: kSubtitleTextStyle.copyWith(
                                          color: Colors.grey[700],
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Spacer(),
                                      Text(
                                        'Av weight',
                                        style: kSubtitleTextStyle.copyWith(
                                          color: Colors.grey[700],
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '25.5 cm',
                                        style: kSubtitleTextStyle.copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      const Spacer(),
                                      Text(
                                        '300g',
                                        style: kSubtitleTextStyle.copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  verticalSpaceRegular,
                                ],
                              ),
                            ),
                            verticalSpaceMedium,
                            Row(
                              children: [
                                _PregnancyInfo(
                                  title: 'Due date',
                                  subtitle: groupSeparatorFormatter.format(
                                      model.dueDate(model.user.lmp!.toDate())),
                                  icon: Icons.child_friendly_rounded,
                                ),
                                const Spacer(),
                                _PregnancyInfo(
                                  title: 'Last period',
                                  subtitle: groupSeparatorFormatter
                                      .format(model.user.lmp!.toDate()),
                                  icon: Icons.child_friendly_rounded,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      verticalSpaceLarge,
                      verticalSpaceLarge,
                      verticalSpaceLarge,
                    ],
                  ),
                ),
              ),
      ),
      viewModelBuilder: () => PregnancyViewModel(),
    );
  }
}

class _PregnancyInfo extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const _PregnancyInfo({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: kRed.withOpacity(0.1),
          child: Icon(
            icon,
            color: Colors.grey[700],
          ),
        ),
        horizontalSpaceRegular,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: kSubtitleTextStyle.copyWith(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              subtitle,
              style: kSubtitleTextStyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ],
    );
  }
}
