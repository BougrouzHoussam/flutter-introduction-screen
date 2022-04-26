// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/sizeconf.dart';

class Spacevert extends StatelessWidget {
  const Spacevert(this.value);
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sizeconf.defaultsize! * value!,
    );
  }
}

class Spacehor extends StatelessWidget {
  const Spacehor(this.value);
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizeconf.defaultsize! * value!,
    );
  }
}
