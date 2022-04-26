// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/widgets/const.dart';
// import 'package:flutter_application_1/feature/auth/presentation/pages/login/widget/loginviewbody.dart';
import 'package:flutter_application_1/feature/auth/presentation/pages/login/widget/newloginbody.dart';

class Loginview extends StatelessWidget {
  const Loginview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondcolor,
      body: LoginSignupScreen(),
    );
  }
}
