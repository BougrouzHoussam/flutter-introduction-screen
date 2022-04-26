// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/widgets/const.dart';
import 'widget/splash_body.dart';
import 'package:flutter/services.dart';

class splash extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondcolor,
      body: Splashbody(),
    );
  }
}
