// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/widgets/const.dart';
import 'package:flutter_application_1/core/utils/widgets/space.dart';

class ReadyButton extends StatelessWidget {
  const ReadyButton({Key? key, required this.text, this.onTap})
      : super(key: key);
  final String text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return
        //here all we had add is on tap that make you apple to add ontap
        //so that the button become useable
        //! here i can't use it caause you must use gestere detactor
        //! or i can't change the page

        ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(maincolor),
      ),
      onPressed: onTap,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: secondcolor),
        ),
      ),
    );
  }
}

class LogoButton extends StatelessWidget {
  const LogoButton(
      {Key? key, this.color, this.text, @required this.onTap, this.icon})
      : super(key: key);
  final String? text;
  final VoidCallback? onTap;
  final IconData? icon;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(therdcolor),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          icon,
          color: color,
        ),
        Spacehor(1),
        Text(
          text!,
          style: TextStyle(
              fontWeight: FontWeight.w500, color: black1, fontSize: 14),
          textAlign: TextAlign.left,
        )
      ]),
    );
  }
}

class Roundbutton extends StatelessWidget {
  const Roundbutton({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color.fromARGB(255, 199, 13, 0), Colors.black],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.3),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 1))
          ]),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
