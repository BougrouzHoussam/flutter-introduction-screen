// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/widgets/const.dart';
import 'widget/introductionbody.dart';

class Introduction extends StatelessWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondcolor,
      body: IntrodctionBody(),
    );
  }
}
