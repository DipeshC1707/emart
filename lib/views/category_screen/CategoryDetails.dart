// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_mart/consts/colors.dart';
import 'package:e_mart/views/category_screen/ItemDetails.dart';
import 'package:e_mart/widgets/bgwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/images.dart';
import '../../consts/lists.dart';
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
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: title!.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 68),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imgBackground), fit: BoxFit.fill)),
          child: Column(children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                  6,
                  (index) => "Baby Clothing"
                      .text
                      .fontFamily(semibold)
                      .color(darkFontGrey)
                      .makeCentered()
                      .box
                      .white
                      .size(150, 60)
                      .margin(const EdgeInsets.symmetric(horizontal: 4))
                      .rounded
                      .make(),
                ))),
            Expanded(
               child: GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 250,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8
                ),
                itemBuilder: (context, index) {
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          imgP5,
                          height: 150,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                        const Spacer(),
                        "Laptop 4GB/64GB"
                            .text
                            .color(darkFontGrey)
                            .fontFamily(semibold)
                            .make(),
                        10.heightBox,
                        "44,999 ₹"
                            .text
                            .color(redColor)
                            .fontFamily(semibold)
                            .make()
                      ],
                    )
                        .box
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .white
                        .rounded
                        .outerShadow
                        .padding(const EdgeInsets.all(12))
                        .make().onTap(() {Get.to(()=>const ItemDetails(title: "Dummy Item"));});
                },
              ),
            ),
        ]),
        ));
  }
}
