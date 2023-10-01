import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../consts/styles.dart';

Widget button({textcolor, color, onpress,String?title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: const EdgeInsets.all(12)
    ),
      onPressed: onpress,
      child: title!.text.color(textcolor).fontFamily(bold).make(),
      );
}
