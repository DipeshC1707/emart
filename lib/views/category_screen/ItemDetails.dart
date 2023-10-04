// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/widgets/button.dart';
import 'package:flutter/material.dart';

import 'package:e_mart/consts/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
          title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
          ]),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VxSwiper.builder(
                    autoPlay: true,
                    height: 350,
                    aspectRatio: 16/9,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        imgFc5,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                  10.heightBox,
                  title!.text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                  10.heightBox,
                  VxRating(
                    onRatingUpdate: (value){},
                    normalColor: textfieldGrey,
                    selectImage: golden,
                    count: 5,
                    size: 25,
                    stepInt: true,
                    ),
                    10.heightBox,
                    "30,000₹".text.color(redColor).fontFamily(bold).size(18).make()
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: button(
                color: redColor,
                onpress: () {},
                textcolor: whiteColor,
                title: "Add To Cart"),
          )
        ],
      ),
    );
  }
}
