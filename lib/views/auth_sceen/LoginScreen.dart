import 'package:e_mart/consts/colors.dart';
import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/consts/lists.dart';
import 'package:e_mart/views/auth_sceen/SignupScreen.dart';
import 'package:e_mart/widgets/bgwidget.dart';
import 'package:e_mart/widgets/button.dart';
import 'package:e_mart/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/applogowidget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const ok = "Log in";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: bgWidget(
          child: Center(
              child: Column(children: [
        (context.screenHeight * 0.1).heightBox,
        applogoWidget(),
        10.heightBox,
        "Log in to $appname".text.fontFamily(bold).white.size(22).make(),
        10.heightBox,
        Column(
          children: [
            textField(title: "Email", hint: "Enter Email"),
            textField(title: "Password", hint: "Enter Password"),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: "Forget Password?".text.size(16).make())),
            5.heightBox,
            button(
                    color: redColor,
                    textcolor: whiteColor,
                    title: "Log in",
                    onpress: () {})
                .box
                .width(context.screenWidth - 50)
                .make(),
            5.heightBox,
            "or Create New Account".text.color(fontGrey).make(),
            5.heightBox,
            button(
                color: lightgolden,
                textcolor: redColor,
                title: "Sign Up",
                onpress: () {
                  Get.to(() => const SignupScreen());
                }).box.width(context.screenWidth - 50).make(),
            10.heightBox,
            "Login With".text.color(fontGrey).make(),
            5.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => CircleAvatar(
                    backgroundColor: lightGrey,
                    radius: 25,
                    child: Image.asset(
                      socialIconList[index],
                      width: 30,
                      fit: BoxFit.fill,
                    )),
              ),
            )
          ],
        )
            .box
            .white
            .rounded
            .padding(const EdgeInsets.all(16))
            .width(context.screenWidth - 70)
            .shadowSm
            .make(),
      ]))),
    );
  }
}
