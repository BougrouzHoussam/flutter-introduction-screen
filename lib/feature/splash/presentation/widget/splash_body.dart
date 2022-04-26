// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/sizeconf.dart';
import 'package:flutter_application_1/core/utils/widgets/const.dart';
import 'package:get/get.dart';
import '../../../introdction/presentation/introductionview.dart';

class Splashbody extends StatefulWidget {
  const Splashbody({Key? key}) : super(key: key);

  @override
  State<Splashbody> createState() => _SplashbodyState();
}

class _SplashbodyState extends State<Splashbody>
    with SingleTickerProviderStateMixin {
  AnimationController? ac;
  Animation? fading;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    ac = AnimationController(vsync: this, duration: Duration(seconds: 1));
    fading = Tween<double>(begin: .2, end: 1).animate(ac!)
        //*here the way to rebuild the whole widget
        //*it's the way that make the program hard
        // ..addListener(() {
        //   setState(() {
        //     if (ac!.isCompleted) {
        //       ac?.repeat(reverse: true);
        //     }
        //   });
        // })
        ;

    ac!.repeat(reverse: true);
    gotonextview();
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    ac?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    sizeconf().init(context);
    // there is another way using an existe widget here we call it
    // faditransition but make sure that you speciacfy that <type>
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: sizeconf.sizeneeded! * 25,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: sizeconf.screenwidth! * .15,
              ),
              AnimatedBuilder(
                  //!the way you speciafy the ui you need to rebuild
                  //?animation is the animation that we had create
                  animation: fading!,
                  //builder mean that the thing that we gone build it with this widget
                  builder: (context, _) => Opacity(
                        opacity: fading?.value,
                        child: Image(image: AssetImage(logo)),
                      ))
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text('H Immobile',
              style: TextStyle(
                color: maincolor,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontFamily: 'A',
              ))
        ]);
  }

  void gotonextview() {
    //here we had add the future when we enter it
    // we specify duration then the code that will happen by annanumos function
    Future.delayed(Duration(milliseconds: 2200), () {
      //use it like this so that everyting old dispper
      // from the mem
      //this a function that return a function
      Get.to(() => Introduction(), transition: Transition.fade);
    });
  }
}
