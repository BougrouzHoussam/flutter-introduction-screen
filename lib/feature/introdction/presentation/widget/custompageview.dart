import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/introdction/presentation/widget/pageviewitem.dart';

class Introdectionpageview extends StatelessWidget {
  const Introdectionpageview({Key? key, @required this.page}) : super(key: key);
  final PageController? page;
  @override
  Widget build(BuildContext context) {
    //print(page!.page);
    //*here to see why the animation happen
    return PageView(
      controller: page,
      children: const [
        PageViewItemcust(
          image: "images/undraw_select_house_qbag.png",
          title: "easy buy",
          descr: "choce your home now ",
        ),
        PageViewItemcust(
          image: "images/undraw_Coming_home_re_ausc.png",
          title: "you are here",
          descr: "there is nothing to see",
        ),
        PageViewItemcust(
          image: "images/undraw_cabin_hkfr.png",
          title: "easy way",
          descr: "the easy way to buy and sell",
        )
      ],
    );
  }
}
