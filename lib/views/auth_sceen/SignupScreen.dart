import 'package:flutter/material.dart';
import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/consts/lists.dart';
import 'package:e_mart/widgets/bgwidget.dart';
import 'package:e_mart/widgets/button.dart';
import 'package:e_mart/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/applogowidget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
        "Join the $appname".text.fontFamily(bold).white.size(22).make(),
        10.heightBox,
        Column(
          children: [
            textField(title: "Name", hint: "Enter Name"),
            textField(title: "Email", hint: "Enter Email"),
            textField(title: "Password", hint: "Enter Password"),
            textField(title: "Retype", hint: "Enter Email"),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: "Forget Password?".text.size(16).make())),
            5.heightBox,
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (newValue) {},
                  checkColor: redColor,
                ),
                Expanded(
                  child: RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: "I agree to the ",
                        style: TextStyle(fontFamily: bold, color: fontGrey)),
                    TextSpan(
                        text: "Terms and Conditions",
                        style: TextStyle(fontFamily: bold, color: redColor)),
                    TextSpan(
                        text: "&",
                        style: TextStyle(fontFamily: bold, color: fontGrey)),
                    TextSpan(
                        text: "Privacy Policy",
                        style: TextStyle(fontFamily: bold, color: redColor)),
                  ])),
                ),
              ],
            ),
            5.heightBox,
            button(
                    color: redColor,
                    textcolor: whiteColor,
                    title: "Sign Up",
                    onpress: () {})
                .box
                .width(context.screenWidth - 50)
                .make(),
            10.heightBox,
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                  text: "Already have an account,",
                  style: TextStyle(fontFamily: bold, color: fontGrey)),
              TextSpan(
                  text: " Log In.",
                  style: TextStyle(fontFamily: bold, color: redColor)),
            ])).onTap(() {
              Get.back();
            }),
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
