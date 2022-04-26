// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/widgets/const.dart';
import 'package:flutter_application_1/core/utils/widgets/space.dart';
import 'package:flutter_application_1/core/utils/widgets/textfeild.dart';

class InformationItem extends StatelessWidget {
  const InformationItem(
      {Key? key, required this.text, @required this.inputType, this.maxlines})
      : super(key: key);
  final String text;
  final TextInputType? inputType;
  final int? maxlines;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        children: [
          Spacehor(1),
          Text(
            text,
            style: TextStyle(
                fontSize: 16,
                color: black1,
                fontWeight: FontWeight.w600,
                height: 1.6),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      Spacevert(1),
      Row(
        children: [
          Expanded(flex: 1, child: Spacehor(10)),
          Expanded(
            flex: 40,
            // ignore: missing_required_param
            child: ReadyTextFiled(
              inputType: inputType,
              maxlines: maxlines,
            ),
          ),
          Expanded(flex: 1, child: Spacehor(10)),
        ],
      )
    ]);
  }
}
