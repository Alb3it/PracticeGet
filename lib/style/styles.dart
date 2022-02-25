import 'package:flutter/material.dart';

const ThemaColor = Color(0xffe5e5e5);

class TextInputDecoration {
  static const IdPwDecoration = InputDecoration(
    hintText: 'Email or Phone Number',
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ThemaColor),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ThemaColor),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    fillColor: Color(0xffeeeeee),
    filled: true,
  );
}
