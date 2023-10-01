import 'package:e_mart/consts/consts.dart';
import 'package:flutter/material.dart';

Widget FeaturedButton({String?title,icon}) {
  return Row(
    children: [
      Image.asset(icon,width: 60,fit:BoxFit.fill),
      10.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.white.rounded.width(200).padding(const EdgeInsets.symmetric(horizontal: 4)).margin(const EdgeInsets.all(4)).make();
}
