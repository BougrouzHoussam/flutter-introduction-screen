// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'const.dart';

class ReadyTextFiled extends StatelessWidget {
  const ReadyTextFiled({
    Key? key,
    @required this.inputType,
    this.icon,
    this.onchanged,
    @required this.onsaved,
    this.maxlines,
  }) : super(key: key);
  final TextInputType? inputType;
  final Widget? icon;
  final ValueSetter? onsaved;
  final ValueSetter? onchanged;
  final int? maxlines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //keyboard type is about the type of the text
      //that you gone enter like number text email
      keyboardType: inputType,
      onChanged: onchanged,
      onSaved: onsaved,
      maxLines: maxlines,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Color(0xFFCCCCCC)))),
    );
  }
}

// ignore: camel_case_types
class buildTextField extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const buildTextField(this.icon, this.hintText, this.isPassword, this.isEmail);
  final IconData icon;
  final String hintText;
  final bool isPassword;
  final bool isEmail;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextField(
        obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Palette.iconColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.textColor1),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.textColor1),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14, color: Palette.textColor1),
        ),
      ),
    );
  }
}
