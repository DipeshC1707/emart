import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/controllers/profilecontroller.dart';
import 'package:e_mart/widgets/bgwidget.dart';
import 'package:e_mart/widgets/button.dart';
import 'package:e_mart/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              imgProfile2,
              width: 100,
              fit: BoxFit.cover,
            ).box.roundedFull.clip(Clip.antiAlias).make(),
            10.heightBox,
            button(
                color: redColor,
                onpress: () {
                  Get.find<ProfileController>().changeImage(context);
                },
                textcolor: whiteColor,
                title: "Change"),
            const Divider(),
            20.heightBox,
            textField(isPass: false, hint: "Enter Name", title: "Name"),
            textField(isPass: true, hint: "Enter Password", title: "Password"),
            20.heightBox,
            SizedBox(
              width: context.screenWidth - 40,
              child: button(
                  color: redColor,
                  textcolor: whiteColor,
                  onpress: () {},
                  title: "Save"),
            )
          ],
        )
            .box
            .white
            .shadowSm
            .padding(const EdgeInsets.all(16))
            .margin(const EdgeInsets.only(
                top: 15, left: 12, right: 12))
            .rounded
            .make(),
      ),
    ));
  }
}
