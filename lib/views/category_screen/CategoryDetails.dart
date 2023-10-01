// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_mart/consts/colors.dart';
import 'package:e_mart/widgets/bgwidget.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/styles.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;

  const CategoryDetails({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: title!.text.fontFamily(bold).white.make(),
        ),
        body: bgWidget(
            child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      6,
                      (index) =>
                          "Baby Clothing".text.fontFamily(semibold).color(darkFontGrey).makeCentered().box.white.size(150,60).margin(const EdgeInsets.symmetric(horizontal: 4)).make(),
                ))
            )]),
        )));
  }
}
