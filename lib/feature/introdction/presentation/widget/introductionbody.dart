// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/core/utils/sizeconf.dart';
import 'package:flutter_application_1/core/utils/widgets/const.dart';
import 'package:flutter_application_1/core/utils/widgets/readybutton.dart';
import 'package:flutter_application_1/feature/introdction/presentation/widget/custompageview.dart';
import 'package:flutter_application_1/feature/introdction/presentation/widget/dots.dart';

import '../../../auth/presentation/pages/login/loginview.dart';

class IntrodctionBody extends StatefulWidget {
  const IntrodctionBody({Key? key}) : super(key: key);

  @override
  State<IntrodctionBody> createState() => _IntrodctionBodyState();
}

class _IntrodctionBodyState extends State<IntrodctionBody> {
  PageController? pagecontroller;
  @override
  void initState() {
    pagecontroller = PageController(
      initialPage: 0,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    sizeconf().init(context);
    //here you must call it inside the same page or that will make a prblm that
    //the change will not work on both side
    return Stack(children: [
      Introdectionpageview(
        page: pagecontroller,
      ),
      Positioned(
          left: 0,
          right: 0,
          top: sizeconf.sizeneeded! * 66,
          child: Dots(
            dot: pagecontroller!.hasClients ? pagecontroller?.page : 0,
          )),
      Visibility(
        //this is not for the visibilty it make the button compelitely stoped
        visible: pagecontroller!.hasClients
            ? (pagecontroller!.page! < 1.5 ? true : false)
            : true,
        child: Positioned(
            top: sizeconf.sizeneeded! * 75,
            left: sizeconf.sizeneededforwidth! * .2,
            right: sizeconf.sizeneededforwidth! * 2.2,
            child: TextButton(
              style: ButtonStyle(
                  //how to stop the animation of the button
                  splashFactory: NoSplash.splashFactory),
              onPressed: () {
                pagecontroller!.jumpToPage(2);
              },
              child: Text('skip',
                  style: TextStyle(
                    fontFamily: 'A',
                    fontSize: 15,
                    color: maincolor,
                  )),
            )),
      ),
      Positioned(
          top: sizeconf.sizeneeded! * 75,
          left: sizeconf.sizeneededforwidth! * 2.2,
          right: sizeconf.sizeneededforwidth! * .2,
          child: ReadyButton(
            onTap: () {
              if (pagecontroller!.page! != 2) {
                pagecontroller?.nextPage(
                    duration: Duration(milliseconds: 400),
                    curve: Curves.easeInOut);
              } else {
                //!Unexpected format,
                //!you can only use widgets and widget functions here
                //this erroe cause i had forgat to put ()
                Get.to(() => Loginview(),
                    transition: Transition.rightToLeftWithFade,
                    duration: Duration(milliseconds: 400));
              }
            },
            text: pagecontroller!.hasClients
                ? (pagecontroller!.page! < 1.5 ? 'Next' : 'Get Started')
                : 'Next',
          ))
    ]);
  }
}
