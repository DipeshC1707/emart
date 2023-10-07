import 'package:e_mart/consts/consts.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget detailsCard(width,String ? count ,String ? title) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count!.text.fontFamily(bold).color(darkFontGrey).make(),
      1.heightBox,
      title!.text.color(darkFontGrey).make(),
      ],
  ).box.white.rounded.width(width).height(60).padding(const EdgeInsets.all(4)).make();
}
