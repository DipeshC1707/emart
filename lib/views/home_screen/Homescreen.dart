import 'package:e_mart/consts/colors.dart';
import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/consts/lists.dart';
import 'package:e_mart/widgets/featured_button.dart';
import 'package:e_mart/widgets/home_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: lightGrey,
            child: TextFormField(
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: "Search Anything",
                  hintStyle: TextStyle(color: textfieldGrey)),
            ),
          ),
          10.heightBox,
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(children: [
                VxSwiper.builder(
                  aspectRatio: 16 / 9,
                  autoPlay: true,
                  height: 150,
                  enlargeCenterPage: true,
                  itemCount: sliderlist.length,
                  itemBuilder: (context, index) {
                    return Image.asset(sliderlist[index], fit: BoxFit.fill)
                        .box
                        .rounded
                        .clip(Clip.antiAlias)
                        .margin(const EdgeInsets.symmetric(horizontal: 8))
                        .make();
                  },
                ),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      2,
                      (index) => HomeButton(
                            icon: index == 0 ? icTodaysDeal : icFlashDeal,
                            width: context.screenWidth / 2.5,
                            height: context.screenHeight * 0.1,
                            title: index == 0 ? "Today's Deals" : "Flash Sale",
                          )),
                ),
                10.heightBox,
                VxSwiper.builder(
                  aspectRatio: 16 / 9,
                  autoPlay: true,
                  height: 150,
                  enlargeCenterPage: true,
                  itemCount: secsliderlist.length,
                  itemBuilder: (context, index) {
                    return Image.asset(secsliderlist[index], fit: BoxFit.fill)
                        .box
                        .rounded
                        .clip(Clip.antiAlias)
                        .margin(const EdgeInsets.symmetric(horizontal: 8))
                        .make();
                  },
                ),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      3,
                      (index) => HomeButton(
                            icon: index == 0
                                ? icTopCategories
                                : index == 2
                                    ? icBrands
                                    : icTopSeller,
                            width: context.screenWidth / 3.5,
                            height: context.screenHeight * 0.15,
                            title: index == 0
                                ? "Top Categories"
                                : index == 1
                                    ? "Brand"
                                    : "Top Sellers",
                          )),
                ),
                20.heightBox,
                Align(
                    alignment: Alignment.centerLeft,
                    child: "Featres Categories"
                        .text
                        .color(darkFontGrey)
                        .size(18)
                        .fontFamily(semibold)
                        .make()),
                20.heightBox,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(children: [
                    Row(
                      children: List.generate(
                          3,
                          (j) => FeaturedButton(
                              icon: featureImages[0][j],
                              title: featureHeadings[0][j])),
                    ),
                    Row(
                      children: List.generate(
                          3,
                          (j) => FeaturedButton(
                              icon: featureImages[1][j],
                              title: featureHeadings[1][j])),
                    ),
                  ]),
                ),
                20.heightBox,
                Container(
                  padding: const EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: const BoxDecoration(color: redColor),
                  child: Column(children: [
                    "Featured Products"
                        .text
                        .white
                        .fontFamily(bold)
                        .size(18)
                        .make(),
                    10.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            6,
                            (index) => Column(
                                  children: [
                                    Image.asset(
                                      imgP1,
                                      width: 150,
                                      fit: BoxFit.cover,
                                    ),
                                    10.heightBox,
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
                                    .white
                                    .rounded
                                    .margin(const EdgeInsets.symmetric(
                                        horizontal: 10))
                                    .padding(const EdgeInsets.all(8))
                                    .make()),
                      ),
                    )
                  ]),
                ),
                25.heightBox,
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 250),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          imgP5,
                          width: 150,
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
                        .white
                        .rounded
                        .padding(const EdgeInsets.all(8))
                        .make();
                  },
                )
              ]),
            ),
          ),
        ],
      )),
    );
  }
}
