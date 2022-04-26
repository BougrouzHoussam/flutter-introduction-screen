// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class sizeconf {
  static double? screenwidth;
  static double? screenheight;
  static double? defaultsize;
  static double? sizeneeded;
  static double? sizeneededforwidth;
  static Orientation? oriantion;
  void init(BuildContext context) {
    screenwidth = MediaQuery.of(context).size.width;
    screenheight = MediaQuery.of(context).size.height;
    //*this is for know if the device is landscape or nrml mode
    //!landscape is when you turn the device to watch
    oriantion = MediaQuery.of(context).orientation;
    //here we had do if condition
    defaultsize = oriantion == Orientation.landscape
        ? screenheight! * .018
        : screenwidth! * .024;
    if (oriantion == Orientation.portrait) {
      sizeneeded = screenwidth! * .024;
    } else {
      sizeneeded = screenheight! * .0118;
    }
    sizeneededforwidth = oriantion == Orientation.landscape
        ? screenheight! * .5
        : screenwidth! * .22;
  }
}
