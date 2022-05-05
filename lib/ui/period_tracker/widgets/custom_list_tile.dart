import 'package:flutter/material.dart';

import '../../../constants/styles.dart';

class CustomListTile extends StatelessWidget {
  final String text1;
  final String text2;

  const CustomListTile({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text1,
          style: kSubtitleTextStyle.copyWith(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        ),
        const Spacer(),
        Text(
          text2,
          style: kSubtitleTextStyle.copyWith(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
