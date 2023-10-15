import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/consts/lists.dart';
import 'package:e_mart/controllers/authcontoller.dart';
import 'package:e_mart/controllers/profilecontroller.dart';
import 'package:e_mart/views/auth_sceen/LoginScreen.dart';
import 'package:e_mart/views/profile_screen/detailscard.dart';
import 'package:e_mart/views/profile_screen/edirprofilescreen.dart';
import 'package:e_mart/views/splash_screen/splash_acreen.dart';
import 'package:e_mart/widgets/bgwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_screen/Home.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var profilecontrolller = Get.put(ProfileController());
    var controller = Get.put(AuthController());
    return bgWidget(
        child: Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            const Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.edit,
                  color: whiteColor,
                )).onTap(() {
              Get.to(() => const EditProfile());
            }),
            5.heightBox,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  // Image.asset(imgProfile2, width: 100, fit: BoxFit.cover)
                  //     .box
                  //     .white
                  //     .roundedFull
                  //     .clip(Clip.antiAlias)
                  //     .make(),
                  const Icon(
                    Icons.person,
                    size: 50,
                  )
                      .box
                      .color(lightGrey)
                      .roundedFull
                      .clip(Clip.antiAlias)
                      .make(),
                  10.widthBox,
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "${currentUser?.displayName}"
                          .text
                          .fontFamily(semibold)
                          .make(),
                      "${currentUser?.email}".text.white.make()
                    ],
                  )),
                  10.widthBox,
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                        color: whiteColor,
                      )),
                      onPressed: () async {
                        await auth.signOut().then((value) {
                          print(currentUser!.email);
                          Get.offAll(() => const LoginScreen());
                          VxToast.show(context, msg: "Logged Out Successfully");
                        });
                        // Get.put(AuthController()).isLoading = false as RxBool;
                      },
                      child: "Log Out".text.white.fontFamily(semibold).make())
                ],
              ),
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsCard(context.screenWidth / 3.4, "22", "In your cart"),
                detailsCard(context.screenWidth / 3.4, "11", "Wishlist"),
                detailsCard(context.screenWidth / 3.4, "0", "Your Orders"),
              ],
            ),
            25.heightBox,
            ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                          title: profileButtonsList[index]
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .make(),
                          leading: Image.asset(
                            profileButtonIcons[index],
                            width: 22,
                          ));
                    },
                    separatorBuilder: (context, index) =>
                        const Divider(color: lightGrey),
                    itemCount: profileButtonIcons.length)
                .box
                .white
                .rounded
                .padding(const EdgeInsets.symmetric(horizontal: 16))
                .margin(const EdgeInsets.all(12))
                .shadowSm
                .make()
                .box
                .color(redColor)
                .make()
          ],
        ),
      )),
    ));
  }
}
