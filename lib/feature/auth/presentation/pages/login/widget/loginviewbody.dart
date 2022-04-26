// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/auth/presentation/pages/complete-information/informationview.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/core/utils/sizeconf.dart';
import 'package:flutter_application_1/core/utils/widgets/const.dart';
import 'package:flutter_application_1/core/utils/widgets/readybutton.dart';
import 'package:flutter_application_1/core/utils/widgets/space.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Loginviewbody extends StatelessWidget {
  const Loginviewbody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacevert(10),
        Row(
          children: [
            SizedBox(
              width: sizeconf.screenwidth! * .1,
            ),
            SizedBox(
              child: Image.asset(logo),
              height: sizeconf.screenheight! * .6,
              width: sizeconf.screenwidth! * .8,
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: LogoButton(
                    onTap: () {
                      Get.to(() => Information(),
                          duration: Duration(milliseconds: 400),
                          transition: Transition.native);
                    },
                    color: redgoogle,
                    icon: FontAwesomeIcons.google,
                    text: 'Log in with',
                  ),
                )),
            Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: LogoButton(
                    //!required is when you need somthing to be add
                    //! and it's necsicery
                    onTap: () {
                      Get.to(() => Information(),
                          duration: Duration(milliseconds: 400),
                          transition: Transition.native);
                    },
                    color: bluefacebook,
                    icon: FontAwesomeIcons.facebook,
                    text: 'Log in with',
                  ),
                )),
          ],
        )
      ],
    );
  }
}
