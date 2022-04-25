import 'package:flutter/material.dart';

class WhiteCircularProgressIndicator extends StatelessWidget {
  const WhiteCircularProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.white),
      ),
    );
  }
}
