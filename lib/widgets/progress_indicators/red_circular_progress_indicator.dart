import 'package:flutter/material.dart';

import '../../constants/styles.dart';

class RedCircularProgressIndicator extends StatelessWidget {
  const RedCircularProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(kRed),
      ),
    );
  }
}
