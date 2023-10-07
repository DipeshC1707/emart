import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/consts/lists.dart';
import 'package:e_mart/views/category_screen/CategoryDetails.dart';
import 'package:e_mart/widgets/bgwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: "Categories".text.white.fontFamily(bold).make(),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imgBackground), fit: BoxFit.fill)),
          child: GridView.builder(
            physics:const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                mainAxisExtent: 200),
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment:MainAxisAlignment.center ,
                children: [
                  Image.asset(categoryImages[index],
                      height: 120, width: 200, fit: BoxFit.cover),
                  10.heightBox,
                  categoryList[index]
                      .text
                      .color(darkFontGrey)
                      .fontFamily(semibold).align(TextAlign.center)
                      .make()
                ],
              )
                  .box
                  .rounded
                  .white
                  .clip(Clip.antiAlias)
                  .outerShadow
                  .make()
                  .onTap(() {
                Get.to(() => const CategoryDetails(title: "Women Clothes"));
              });
            },
          ),
        ));
  }
}
