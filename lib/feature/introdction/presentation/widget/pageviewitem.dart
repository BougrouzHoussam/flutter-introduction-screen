import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/sizeconf.dart';
import 'package:flutter_application_1/core/utils/widgets/const.dart';
import 'package:flutter_application_1/core/utils/widgets/space.dart';

class PageViewItemcust extends StatelessWidget {
  const PageViewItemcust({Key? key, this.title, this.descr, this.image})
      : super(key: key);
  final String? title;
  final String? descr;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //! when you got the photo fix it
        const Spacevert(22),
        SizedBox(
            height: sizeconf.screenwidth! * .7, child: Image.asset(image!)),
        const Spacevert(.7),
        Text(
          title!,
          style: const TextStyle(
              fontWeight: FontWeight.w700, fontSize: 20, color: maincolor),
          textAlign: TextAlign.left,
        ),
        const Spacevert(.7),
        Text(
          descr!,
          style: const TextStyle(
              fontWeight: FontWeight.normal, fontSize: 20, color: therdcolor),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
