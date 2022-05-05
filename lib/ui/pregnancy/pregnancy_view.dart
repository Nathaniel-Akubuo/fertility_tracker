import 'package:fertility_tracker/constants/styles.dart';
import 'package:fertility_tracker/ui/pregnancy/pregnancy_viewmodel.dart';
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
        body: SingleChildScrollView(
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
                        'assets/week18.jpg',
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
                      Card(
                        elevation: 2,
                        shape: const RoundedRectangleBorder(
                          borderRadius: k16pxBorderRadius,
                        ),
                        child: Container(
                          padding: kMainPadding,
                          decoration: BoxDecoration(
                            color: kRed.withOpacity(0.05),
                            borderRadius: k16pxBorderRadius,
                          ),
                          child: Column(
                            children: [
                              verticalSpaceRegular,
                              Row(
                                children: [
                                  Text(
                                    'Week 18',
                                    style: kSubtitleTextStyle.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '2nd trimester',
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
                      ),
                      verticalSpaceMedium,
                      Row(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: kRed.withOpacity(0.1),
                                child: Icon(
                                  Icons.child_friendly_rounded,
                                  color: Colors.grey[700],
                                ),
                              ),
                              horizontalSpaceRegular,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Due date',
                                    style: kSubtitleTextStyle.copyWith(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '21 Sep 2022',
                                    style: kSubtitleTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: kRed.withOpacity(0.1),
                                child: Icon(
                                  Icons.child_friendly_rounded,
                                  color: Colors.grey[700],
                                ),
                              ),
                              horizontalSpaceRegular,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Last period',
                                    style: kSubtitleTextStyle.copyWith(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    groupSeparatorFormatter
                                        .format(DateTime.now()),
                                    style: kSubtitleTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => PregnancyViewModel(),
    );
  }
}
