import 'package:flutter/material.dart';

Widget MyFormText(String title, double size, FontWeight fontWeight, Color Color,
    TextAlign alignment) {
  return Text(title,
      textAlign: alignment,
      style: TextStyle(fontSize: size, fontWeight: fontWeight, color: Color));
}
