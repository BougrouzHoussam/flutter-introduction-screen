// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_application_1/core/utils/widgets/const.dart';

class Dots extends StatelessWidget {
  const Dots({Key? key, @required this.dot}) : super(key: key);
  final double? dot;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: dot!,
      decorator: DotsDecorator(
          color: Colors.transparent,
          activeColor: maincolor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(color: maincolor))),
    );
  }
}
