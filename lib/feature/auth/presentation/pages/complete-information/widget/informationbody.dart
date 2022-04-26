// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/widgets/readybutton.dart';
import 'package:flutter_application_1/core/utils/widgets/space.dart';
import 'package:flutter_application_1/feature/auth/presentation/pages/complete-information/widget/informationitem.dart';

class InformationBody extends StatelessWidget {
  const InformationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacevert(10),
        InformationItem(
          text: "Email",
          inputType: TextInputType.emailAddress,
          maxlines: 1,
        ),
        InformationItem(
            text: "User Name", inputType: TextInputType.name, maxlines: 1),
        Spacevert(2),
        InformationItem(
            text: "Phone Number", inputType: TextInputType.number, maxlines: 1),
        Spacevert(5),
        Row(
          children: [
            Expanded(flex: 1, child: Spacehor(10)),
            Expanded(
              flex: 40,
              child: ReadyButton(
                text: "Login",
                onTap: () {},
              ),
            ),
            Expanded(flex: 1, child: Spacehor(10)),
          ],
        )
      ],
    );
  }
}
