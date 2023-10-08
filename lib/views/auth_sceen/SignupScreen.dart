import 'package:e_mart/views/home_screen/Home.dart';
import 'package:flutter/material.dart';
import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/consts/lists.dart';
import 'package:e_mart/widgets/bgwidget.dart';
import 'package:e_mart/widgets/button.dart';
import 'package:e_mart/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_mart/controllers/authcontoller.dart';

import '../../widgets/applogowidget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
  var controller = Get.put(AuthController());

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordretypeController = TextEditingController();

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
        Obx(
          () => Column(
            children: [
              textField(
                  title: "Name",
                  hint: "Enter Name",
                  controller: nameController,
                  isPass: false),
              textField(
                  isPass: false,
                  title: "Email",
                  hint: "Enter Email",
                  controller: emailController),
              textField(
                  isPass: true,
                  title: "Password",
                  hint: "Enter Password",
                  controller: passwordController),
              textField(
                  isPass: true,
                  title: "Retype",
                  hint: "Enter Email",
                  controller: passwordretypeController),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: "Forget Password?".text.size(16).make())),
              5.heightBox,
              Row(
                children: [
                  Checkbox(
                    activeColor: whiteColor,
                    value: isCheck,
                    onChanged: (newValue) {
                      setState(() {
                        isCheck = true;
                      });
                    },
                    checkColor: redColor,
                  ),
                  Expanded(
                    child: RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: "I agree to the ",
                          style:
                              TextStyle(fontFamily: regular, color: fontGrey)),
                      TextSpan(
                          text: "Terms and Conditions ",
                          style:
                              TextStyle(fontFamily: regular, color: redColor)),
                      TextSpan(
                          text: "&",
                          style:
                              TextStyle(fontFamily: regular, color: fontGrey)),
                      TextSpan(
                          text: " Privacy Policy",
                          style:
                              TextStyle(fontFamily: regular, color: redColor)),
                    ])),
                  ),
                ],
              ),
              5.heightBox,
              controller.isLoading.value
                  ? const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(redColor),
                    )
                  : button(
                      color: isCheck == true ? redColor : lightGrey,
                      textcolor: whiteColor,
                      title: "Sign Up",
                      onpress: () async {
                        if (isCheck != false) {
                          controller.isLoading(true);
                          try {
                            await controller.SignUpMethod(
                              context: context,
                              email: emailController.text,
                              password: passwordController.text,
                              name: nameController.text,
                            )
                                .then((value) => controller.storeUserData(
                                    email: emailController.text,
                                    name: nameController.text,
                                    password: passwordController.text))
                                .then((value) {
                              VxToast.show(context,
                                  msg: "Logged In Succesfully");
                              Get.offAll(() => const Home());
                            });
                          } catch (e) {
                            VxToast.show(context, msg: e.toString());
                            auth.signOut();
                            controller.isLoading(false);
                          }
                        }
                      }).box.width(context.screenWidth - 50).make(),
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
        ),
      ]))),
    );
  }
}
